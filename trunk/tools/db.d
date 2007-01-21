import std.file, std.stdio, std.cstream, std.conv, std.string, std.ctype;

static char[][] TORTURE_FLAGS = [
	/* 0 args */
	"",

	/* 1 args */
	"-g",
	"-inline",
	"-fPIC",
	"-O",
	"-release",

	/* 2 args */
	"-g -inline",
	"-g -fPIC",
	"-g -O",
	"-g -release",
	"-inline -fPIC",
	"-inline -O",
	"-inline -release",
	"-fPIC -O",
	"-fPIC -release",
	"-O -release",

	/* 3 args */
	"-g -inline -fPIC",
	"-g -inline -O",
	"-g -inline -release",
	"-g -fPIC -O",
	"-g -fPIC -release",
	"-g -O -release",
	"-inline -fPIC -O",
	"-inline -fPIC -release",
	"-inline -O -release",
	"-fPIC -O -release",

	/* 4 args */
	"-g -inline -fPIC -O",
	"-g -inline -fPIC -release",
	"-g -fPIC -O -release",
	"-inline -fPIC -O -release",

	/* 5 args */
	"-g -inline -fPIC -O -release",

	/* 4 args - previously ommitted */
	"-g -inline -O -release"
];

char[] stripMessage(char[] raw, char[] file){
	char[] ext = file[rfind(file, '.') .. $];
	// locations
	{
		uint loc = 1;
		int a = find(raw, file ~ "(");
		while(a != -1){
			int b = a + file.length + 1;
			while(b < raw.length && isdigit(raw[b])){
				b++;
			}
			if(b < raw.length && raw[b] == ')'){
				raw = replace(raw, raw[a .. b+1], format("source%s(%s)", ext, loc++));
				a = find(raw, file ~ "(");
			}else{
			 	a = -1;
			}
		}
	}

	// module name
	raw = replace(raw, "dstress." ~ replace(file[0 .. $ - ext.length], "/", "."), "source");

	// file name
	raw = replace(raw, file, "source" ~ ext);

	return raw;
}

void toText(char[] raw){
	toBlob(cast(ubyte[]) raw);
}

void toBlob(void[] raw){
	printf("'");
	foreach(ubyte x; cast(ubyte[])raw){
		switch(x){
			case '\\', '\'':
				printf("\\%c", x);
				break;
			case '\r':
				printf("\\r");
				break;
			case '\n':
				printf("\\n");
				break;
			case 0:
				printf("\\0");
				break;
			default:
				printf("%c", x);
		}
	}
	printf("'");
}

int main(char[][] arg){
	printf("%.*s", `
drop table Result;
drop table Message;
drop table Testcase;

create TABLE Message(
	id smallint(2) unsigned unique,
	message TEXT
) ENGINE=InnoDB CHARSET=utf8;

CREATE TABLE Testcase (
	name CHAR(40) unique,
	source BLOB,
	id SMALLINT(2) unsigned unique,
	type enum('compile','complex','nocompile','norun','run','undefined')
) ENGINE=InnoDB CHARSET=utf8;

create TABLE Result (
 	testcase SMALLINT(2) unsigned,
	message SMALLINT(2) unsigned,
	result enum('FAIL','XPASS','ERROR') NOT NULL default 'ERROR',
	options enum('','-g','-inline','-fPIC','-O','-release','-g -inline','-g -fPIC','-g -O','-g -release',
	'-inline -fPIC','-inline -O','-inline -release','-fPIC -O','-fPIC -release','-O -release',
	'-g -inline -fPIC','-g -inline -O','-g -inline -release','-g -fPIC -O','-g -fPIC -release',
	'-g -O -release','-inline -fPIC -O','-inline -fPIC -release','-inline -O -release',
	'-fPIC -O -release','-g -inline -fPIC -O','-g -inline -fPIC -release','-g -inline -O -release',
	'-g -fPIC -O -release','-inline -fPIC -O -release','-g -inline -fPIC -O -release'),
	CONSTRAINT Result_c1 FOREIGN KEY (testcase) REFERENCES Testcase (id),
	CONSTRAINT Result_c2 FOREIGN KEY (message) REFERENCES Message (id)
) ENGINE=InnoDB CHARSET=utf8;
`);


	ushort[char[]] tests;
	ushort[char[]] messages;
	
	char[] msg;
	bool badValgrind;
	bool badGDB;

	for(char[] line = din.readLine(); !din.eof(); line = din.readLine()){
		if(find(line, "Torture-Sub-") == 0){
			line = line["Torture-Sub-".length .. $];
			int torture_id;
			char[] result;
			char[] name;
			char[] root;

			{
				int i = find(line, '/');
				torture_id = toInt(line[0 .. i]);
			}

			{
				int a = find(line, '-');
				int b = find(line, ':');
				result = line[a + 1 .. b];
				line = strip(line[b+1 .. $]);
			}

			{
				int a = find(line, std.path.sep);
				root = line[0 .. a];
				name = line[a + std.path.sep.length .. $];
				a = find(name, ' ');
				if(a != -1){
					name = name[0 .. a];
				}
			}

			if(root == "complex"){
				// ignore complex test cases
				continue;
			}

		if(result == "XPASS" || result == "FAIL" || result == "ERROR"){
				ushort* test_id = name in tests;
				if(!test_id){
					printf("insert into Testcase values(");
					toText(name);
					printf(",");
					toBlob(replace(cast(char[]) read(root ~ std.path.sep ~ name), "$HeadURL: /local/dstress/", "$HeadURL: http://dstress.kuehne.cn/"));
					ushort new_id = cast(ushort)(tests.length + 1);
					printf(", %hu, '%.*s');\n", new_id, root);
					tests[name] = new_id;
					test_id = name in tests;
				}

				if(badValgrind){
					msg = "Valgrind";
				}else if(badGDB){
					msg = "GDB";
				}else {
					msg = stripMessage(msg, root ~ std.path.sep ~ name);
				}
				ushort* message_id = msg in messages;
				if(!message_id){
					ushort new_id = cast(ushort) (messages.length + 1);
					printf("insert into Message values(%hu, ", new_id);
					toText(msg);
					printf(");\n");
					messages[msg] = new_id;
					message_id = msg in messages;
				}
				printf("insert into Result values(%hu, %hu, '%.*s', '%.*s');\n", *test_id,
					*message_id, result, TORTURE_FLAGS[torture_id - 1]);
			}else{
				// ignore 'good' results
			}
			msg.length = 0;
			badValgrind = false;
			badGDB = false;
			continue;
		}

		if(line.length < 1){
			continue;
		}
		if(line == "--------"){
			continue;
		}
		if(line == "EXIT CODE: 0"){
			msg.length = 0;
			continue;
		}
		if(find(line, "EXIT CODE:") == 0){
			continue;
		}
		if(find(line, "compile:") == 0  || find(line, "run:") == 0 || find(line, "norun:") == 0 || find(line, "nocompile:") == 0){
			continue;
		}
		if(find(line, "gcc ./obj/") == 0 || find(line, "creating a DT_TEXTREL in object") != -1){
			continue;
		}
		if(find(line, "valgrind --leak-check=no") == 0){
			continue;
		}
		if(find(line, "==") == 0){
			badValgrind=true;
			line = line[find(line[1 .. $], "==") + 1 + 3 .. $];
		}
		if(find(line, "This GDB was configured") == 0){
			badGDB = true;
		}
		if(find(line, "/opt/dmd/bin/") == 0){
			line = "Killed";
		}
		if(msg.length){
			msg ~= '\n';
			msg ~= line;
		}else{
			msg = line.dup;
		}
	}

	return 0;
}
