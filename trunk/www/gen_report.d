import std.string;
import std.file;
import std.c.stdlib;
import std.path;
import std.stdio;
import std.date;

enum Result{
	UNTESTED	= 0,
	PASS		= 1 << 2,
	XFAIL		= 2 << 2,
	XPASS		= 3 << 2,
	FAIL		= 4 << 2,
	ERROR		= 5 << 2,
	BASE_MASK	= 7 << 2,
		
	EXT_MASK	= 3,
	BAD_MSG		= 1,
	BAD_GDB		= 2
}

const char[] header =
	"<th>&nbsp;</th><th>-g</th><th>-inline</th><th>-fPIC</th><th>-O</th><th>-release</th>"
	"<th>-g -inline</th><th>-g -fPIC</th><th>-g -O</th><th>-g -release</th>"
	"<th>-inline -fPIC</th><th>-inline -O</th><th>-inline -release</th>"
	"<th>-fPIC -O</th><th>-fPIC -release</th><th>-O -release</th>"
	"<th>-g -inline -fPIC</th><th>-g -inline -O</th><th>-g -inline -release</th>"
	"<th>-g -fPIC -O</th><th>-g -fPIC -release</th><th>-g -O -release</th>"
	"<th>-inline -fPIC -O</th><th>-inline -fPIC -release</th><th>-inline -O -release</th><th>-fPIC -O -release</th>"
	"<th>-g -inline -fPIC -O</th><th>-g -inline -fPIC -release</th><th>-g -fPIC -O -release</th>"
	"<th>-inline -fPIC -O -release</th><th>-g -inline -fPIC -O -release</th>";

version(Windows){
	import std.c.windows.windows;
extern(Windows):
	BOOL GetFileTime(HANDLE hFile, LPFILETIME lpCreationTime, LPFILETIME lpLastAccessTime, LPFILETIME lpLastWriteTime);
}else{
	import std.c.linux.linux;
}

long getModTime(char[] fileName){
	version(Windows){
		HANDLE h;
		
		if (useWfuncs){
			wchar* namez = std.utf.toUTF16z(fileName);
			h = CreateFileW(namez,GENERIC_WRITE,0,null,OPEN_ALWAYS,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
		}else{
			char* namez = toMBSz(fileName);
			h = CreateFileA(namez,GENERIC_WRITE,0,null,OPEN_ALWAYS,
				FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN,cast(HANDLE)null);
		}

		if (h == INVALID_HANDLE_VALUE)
			goto err;

		FILETIME creationTime;
		FILETIME accessTime;
		FILETIME writeTime;
		
		BOOL b = GetFileTime(h, &creationTime, &accessTime, &writeTime);
		if(b==1){
			long modA = writeTime.dwLowDateTime;
			long modB = writeTime.dwHighDateTime;
			return modA  | (modB << (writeTime.dwHighDateTime.sizeof*8));
		}

err:
		CloseHandle(h);
		throw new Exception("failed to query file modification : "~fileName);
	}else{
		char* namez = toStringz(fileName);
		struct_stat statbuf;
		
		if(std.c.linux.linux.stat(namez, &statbuf)){
			throw new FileException(fileName, getErrno());
		}

		return statbuf.st_mtime;
	}
}

class TortureTest{
	char[] file;
	char[] name;
	Result[] result;

	this(char[] source, char[] res){
		file = source;
		name = file.dup;

		int i = rfind(name, '/');
		if(i >- 1){
			name = name[i+1 .. $];
		}

		i = rfind(name, '\\');
		if(i > -1){
			name = name[i+1 .. $];
		}

		i = rfind(name, '.');
		if(i > -1){
			name = name[0 .. i];
		}

		assert(res[0]=='{');
		assert(res[$-1]=='}');

		res=res[1 .. $-1];
		result.length = res.length;
		foreach(int i, char c; res){
			result[i] = cast(Result)(c - 'A');
			assert(result[i] < 'Z'-'A');
			assert(result[i] >= 0);
		}
	}

	SimpleTest condense(){
		SimpleTest st = new SimpleTest(file, name);
		st.result = Result.UNTESTED;
		foreach(Result t; result){
			if(st.result < t){
				st.result = t;
			}
		}
		return st;
	}

	char[] toString(){
		char[] back = format("%s (%s) ", name, file);
		
		foreach(Result r; result){
			back ~= cast(char)(r+'A');
		}

		return back;
	}
}

class SimpleTest{
	char[] file;
	char[] name;
	Result result;

	this(char[][] token){
		// @todo@ bad_gdb / bad_msg
		switch(token[0]){
			case "PASS:": result = Result.PASS; break;
			case "XPASS:": result = Result.XPASS; break;
			case "FAIL:": result = Result.FAIL; break;
			case "XFAIL:": result = Result.XFAIL; break;
			case "ERROR:": result = Result.ERROR; break;
			default: throw new Exception("unhandled mark \""~token[0]~"\"");
		}
		file = token[1];
		name = file.dup;

		int i = rfind(name, '/');
		if(i >- 1){
			name = name[i+1 .. $];
		}

		i = rfind(name, '\\');
		if(i > -1){
			name = name[i+1 .. $];
		}

		i = rfind(name, '.');
		if(i > -1){
			name = name[0 .. i];
		}
	}

	this(char[] file, char[] name){
		this.file = file;
		this.name = name;
	}

	char[] toString(){
		return format("%s (%s) %s", name, file, cast(char)(result+'A'));
	}
}

class Sheet{
	TortureTest[char[]] torture;
	SimpleTest[char[]] summary;
	char[] name;
	char[] cleanName;

	private const char[] maskTorture="Torture:";
	private const char[][] maskSimple=["XPASS:", "PASS:", "FAIL:", "XFAIL:", "ERROR:"];

	this(char[] fileName){
		char[] data = cast(char[]) std.file.read(fileName);
		long modTime = getModTime(fileName);

		{
			name = fileName.dup;
			int i = rfind(name, "/");
			if(i >- 1){
				name = name[i+1 .. $];
			}
			i = rfind(name, "\\");
			if(i > -1){
				name = name[i+1 .. $];
			}
			name = replace(name, "_", " ");
			cleanName = split(name)[$-1];
		}
		
		foreach(char[] line; splitlines(data)){
			if(line.length>maskTorture.length && line[0 .. maskTorture.length]==maskTorture){
				char[][] token = split(line);
				TortureTest t = new TortureTest(token[1], token[2]);
				if(exists(".."~sep~t.file) && getModTime(".."~sep~t.file)<modTime){
					torture[t.name] = t;
					summary[t.name] = t.condense();
				}
			}else{
				foreach(char[] key; maskSimple){
					if(line.length>key.length && line[0 .. key.length]==key){
						SimpleTest t = new SimpleTest(split(line));
						if(exists(".."~sep~t.file) && getModTime(".."~sep~t.file)<modTime){
							summary[t.name] = t;
						}
					}
				}
			}
		}
	}

	char[] toTorturePage(){
		char[][] keys = torture.keys.sort;
		if(keys.length<1){
			return null;
		}

		char[] back = "<html>\n<head><title>DStress - Torture: "~name~"</title><link rel='stylesheet' type='text/css' href='formate.css' /><meta name='author' content='Thomas Kuehne' /></head>\n";
		back ~= "<body><center><h1>DStress - Torture: "~name~"</h2></center><center><small>by Thomas K&uuml;hne &lt;thomas-at-kuehne.cn&gt;<small></center>\n";
		back ~= "<h2><a name=\"note\" id=\"note\"></a>Note</h2>\n<blockquote>A detailed description of the testing and the used symbols can be found on the <a href='./dstress.html'>main page</a>.</blockquote>\n";
		back ~= "<h2><a name=\"summary\" id=\"summary\"></a>Summary</h2>\n<table border=\"1\">\n<tr><td>&nbsp;</td>";
		back ~= header ~ "</tr>\n";

		uint[][] stat;
		stat.length = 6;
		stat[0].length = torture[keys[0]].result.length;
		stat[1].length = stat[0].length;
		stat[2].length = stat[0].length;
		stat[3].length = stat[0].length;
		stat[4].length = stat[0].length;
		stat[5].length = stat[0].length;

		foreach(TortureTest t; torture.values){
			foreach(int i, Result r; t.result){
				stat[r >> 2][i]++;
			}
		}
		back ~= "<tr class=\"" ~ cast(char)('A'+Result.PASS)~"\"><th>PASS</th>";
		foreach(uint i; stat[1]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }
		back ~= "</tr>\n<tr class=\"" ~ cast(char)('A'+Result.XFAIL)~"\"><th>XFAIL</th>";
		foreach(uint i; stat[2]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }
		back ~= "</tr>\n<tr class=\"" ~ cast(char)('A'+Result.XPASS)~"\"><th>XPASS</th>";
		foreach(uint i; stat[3]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }
		back ~= "</tr>\n<tr class=\"" ~ cast(char)('A'+Result.FAIL)~"\"><th>FAIL</th>";
		foreach(uint i; stat[4]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }
		back ~= "</tr>\n<tr class=\"" ~ cast(char)('A'+Result.ERROR)~"\"><th>ERROR</th>";
		foreach(uint i; stat[5]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }
		back ~= "</tr>\n<tr class=\"A\"><th>untested</th>";
		foreach(uint i; stat[0]){ back ~= "<td>"~std.string.toString(i)~"</td>"; }

		back ~= "</tr>\n</table>\n<h2><a name='details' id='details'></a>Details</h2>\n<table border=\"1\">\n";

		back ~= "<tr><td>&nbsp;</td>"~header~"</tr>\n";

		foreach(char[] key; keys){
			TortureTest t = torture[key];
			SimpleTest st = t.condense();

			if(st.result == Result.PASS
				|| st.result == Result.XFAIL
				|| st.result == Result.UNTESTED)
			{
				continue;
			}else{
				char[] name = replace(t.name, "_", " ");
				back~="<tr><th><a href=\"../"~t.file~"\" id=\""~t.name~"\">"~name~"</a></th>";
				foreach(Result r; t.result){
					back ~= "<td class='" ~ cast(char)(r+'A') ~ "'>";
					switch(r & Result.BASE_MASK){
						case Result.PASS: back ~= "PASS"; break;
						case Result.XPASS: back ~= "XPASS"; break;
						case Result.FAIL: back ~= "FAIL"; break;
						case Result.XFAIL: back ~= "XFAIL"; break;
						case Result.ERROR: back ~= "ERROR"; break;
						case Result.UNTESTED: back ~= "-"; break;
						default: throw new Exception(t.toString()~"\n\n"~st.toString());
					}
					back ~= "</td>";
				}
				back ~= "\n";
			 }
		}

		back ~= "<tr><td>&nbsp;</td>"~header~"</tr>\n";

		back ~= "</table>\n<div><br /><br /><hr /><a href='http://dstress.kuehne.cn/www/"~cleanName~".html'>http://dstress.kuehne.cn/www/"~cleanName~".html</a>&nbsp; &nbsp;" ~ std.date.toString(std.date.getUTCtime())~ "</div></body>\n</html>";
		return back;
	}
}

char[][] unique(char[][] a){
	char[][] b = a.sort;
	char[][] back;

	back ~= b[0];

	size_t ii=0;
	for(size_t i=0; i<b.length; i++){
		if(back[ii]!=b[i]){
			back~=b[i];
			ii++;
		}
	}

	return back;	
}

int main(char[][] arg){

	Sheet[] sheets;
	sheets.length = arg.length - 1;

	foreach(int i, char[] file; arg[1 .. $]){
		sheets[i] = new Sheet(file);
	}

	char[][] haveTorturePage;
	char[][] keys;
	
	foreach(Sheet s; sheets){
		char[] data = s.toTorturePage();
		if(data.length > 1){
			char[] name = split(s.name)[$-1];
			std.file.write(name~".html", data);
			haveTorturePage ~= name;
		}
		keys ~= s.summary.keys;
	}

	keys = unique(keys);

	uint[][] stat;
	stat.length = 6;
	stat[0].length = sheets.length;
	stat[1].length = sheets.length;
	stat[2].length = sheets.length;
	stat[3].length = sheets.length;
	stat[4].length = sheets.length;
	stat[5].length = sheets.length;

	char[] doc = "<html>\n<head><title>DStress Report</title><link rel='stylesheet' type='text/css' href='formate.css' /><meta name='author' content='Thomas Kuehne' /></head>\n<body>\n<center><h1>DStress Report</h1></center>\n";

	doc ~= "<h2><a name='note' id='note'></a>Note</h2>\n<blockquote>A detailed description of the testing and the used symbols can be found on the <a href='./dstress.html'>main page</a>.</blockquote>\n";

	char[] res = "<h2><a name='details' id='details'></a>Details</h2>\n<table border='1'>\n<tr><td>&nbsp;</td>";
	foreach(Sheet s; sheets){
		res ~= "<th><a href='./"~s.cleanName~".html'>"~s.name~"</a></th>";
	}
	
	res~="</tr>\n";

	foreach(char[] key; keys){
		char[] line = replace(key, "_", " ")~"</a></th>";
		char[] file = "";
		bool badResult = false;
		foreach(int i, Sheet s; sheets){
			SimpleTest* st = key in s.summary;
			if(st is null){
				line ~= "<td class='A'>-</td>";
				stat[0][i]++;
			}else{
				file = st.file.dup;
				stat[st.result >> 2][i]++;
				line ~= "<td class='";
				line ~= 'A'+st.result;
				line ~= "'>";
				switch(st.result & Result.BASE_MASK){
					case Result.PASS: line~="PASS"; break;
					case Result.XPASS: line~="XPASS"; badResult=true; break;
					case Result.FAIL: line~="FAIL"; badResult=true; break;
					case Result.XFAIL: line~="XFAIL"; break;
					case Result.ERROR: line~="ERROR"; badResult=true; break;
					case Result.UNTESTED: line~="-"; break;
					default:{
						throw new Exception(s.name~" - "~ st.toString());
					}
				}
				line ~= "</td>";
			}
		}
		if(badResult){
			res~="<tr><th><a href='../"~file~"'>"~line~"\n";
		}
	}
	res~="<tr><td>&nbsp;</td>";
	foreach(Sheet s; sheets){
		res ~= "<th><a href='./"~s.cleanName~".html'>"~s.name~"</a></th>";
	}
	res ~= "</table>\n<div><br /><br /><hr /><a href='http://dstress.kuehne.cn/www/results.html'>http://dstress.kuehne.cn/www/results.html</a>&nbsp; &nbsp;" ~ std.date.toString(std.date.getUTCtime())~ "</div></body>\n</html>";

	char[] statBuffer = "<h2><a name='summary' id='summary'></a>Summary</h2>\n<table border='1'>\n<tr><td>&nbsp;</td>";
	foreach(Sheet s; sheets){
		statBuffer ~= "<th><a href='./"~s.cleanName~".html'>"~s.name~"</a></th>";
	}
	statBuffer ~= "\n";
	statBuffer ~= "<tr class=\""~cast(char)(Result.PASS+'A')~"\"><th>PASS</th>";
	foreach(uint i; stat[1]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n<tr class=\""~cast(char)(Result.XFAIL+'A')~"\"><th>XFAIL</th>";
	foreach(uint i; stat[2]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n<tr class=\""~cast(char)(Result.XPASS+'A')~"\"><th>XPASS</th>";
	foreach(uint i; stat[3]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n<tr class=\""~cast(char)(Result.FAIL+'A')~"\"><th>FAIL</th>";
	foreach(uint i; stat[4]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n<tr class=\""~cast(char)(Result.ERROR+'A')~"\"><th>ERROR</th>";
	foreach(uint i; stat[5]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n<tr class='A'><th>untested</th>";
	foreach(uint i; stat[0]){ statBuffer ~= "<td>"~std.string.toString(i)~"</td>"; }
	statBuffer ~= "</tr>\n</table>\n";

	std.file.write("results.html", doc ~ statBuffer ~ res);
	return 0;
}
