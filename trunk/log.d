module cn.kuehne.dstress.log;

private import std.string;
private import std.conv;
private import std.stdio;
private import std.stream;
private import std.file;
private import std.c.stdlib;
private import std.date;

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

	/* 4 args - ommitted */
	"-g -inline -O -release"
];

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
	BAD_GDB		= 2,
	
	MAX		= BAD_GDB + BASE_MASK
}

char[] toString(Result r){
	switch(r & Result.BASE_MASK){
		case Result.PASS: return "PASS";
		case Result.XPASS: return "XPASS";
		case Result.FAIL: return "FAIL";
		case Result.XFAIL: return "XFAIL";
		case Result.ERROR: return "ERROR";
		case Result.UNTESTED: return "UNTESTED";
		default:
			break;
	}
	throw new Exception(format("unhandled Result value %s", cast(int)r));
}

char[] dateString(){
	static char[] date;
	if(date is null){
		auto time = getUTCtime();
		auto year = YearFromTime(time);
		auto month = MonthFromTime(time);
		auto day = DateFromTime(time);
		date = format("%d-%02d-%02d", year, month+1, day); 
	}
	return date;
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

private{
	version(Windows){
		import std.c.windows.windows;
		extern(Windows) BOOL GetFileTime(HANDLE hFile, LPFILETIME lpCreationTime, LPFILETIME lpLastAccessTime, LPFILETIME lpLastWriteTime);
	}else version(linux){
		import std.c.linux.linux;
		version = Unix;
	}else version(Unix){
		import std.c.unix.unix;
	}else{
		static assert(0);
	}

	alias ulong FStime;

	FStime getFStime(char[] fileName){
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
		}else version(Unix){
			char* namez = toStringz(fileName);
			struct_stat statbuf;
		
			if(stat(namez, &statbuf)){
				throw new FileException(fileName, getErrno());
			}

			return statbuf.st_mtime;
		}else{
			static assert(0);
		}
	}
}

char[] cleanFileName(char[] file){
	char[] back;
	bool hadSep;

	foreach(char c; file){
		if(c == '/' || c == '\\'){
			if(!hadSep){
				back ~= '/';
				hadSep = true;
			}
		}else{
			back ~= c;
			hadSep = false;
		}
	}

	size_t start = 0;
	while(back[start] <= ' ' && start < back.length){
		start++;
	}

	size_t end = back.length-1;
	while(back[end] <= ' ' && end >= start){
		end--;
	}

	back = back[start .. end+1];

	return back;
}

abstract class Test{
	char[] name;
	char[] file;

	abstract Result condensed();

	this(char[] file){
		this.file = file;

		int start = rfind(file, "/");
		if(start<0){
			start = 0;
		}else{
			start += 1;
		}
		
		int end = rfind(file, ".");
		if(end < start){
			end = file.length;
		}

		name = file[start .. end];
	}
}

class TortureTest : Test{
	Result[] r;

	Result condensed(){
		Result back;
		foreach(Result res; r){
			if(res > back){
				back = res;
			}
		}

		return back;
	}

	this(char[] file){
		super(file);
		r.length = TORTURE_FLAGS.length;
	}

	this(char[] file, Result[] result){
		if(result.length != TORTURE_FLAGS.length){
			throw new Exception(format("expected %s results but got %s (%s)", TORTURE_FLAGS.length, result.length, file));
		}

		super(file);
		r = result.dup;
	}
}

class Log{
	TortureTest[char[]] torture;

	char[] id;

	this(char[] id){
		this.id = id;
	}

	Regression[] findGlobalRegressions(Log[] logs){
		Regression[] back;

		if(logs.length < 1){
			return back;
		}

		foreach(TortureTest currentTest; torture.values){
			bool hadOldData = false;
			Result oldResults[];
			oldResults.length = TORTURE_FLAGS.length;
			oldResults[] = Result.MAX;

			foreach(Log l; logs){
				TortureTest* test = currentTest.file in l.torture;
				if(test !is null){
					hadOldData = true;
					foreach(size_t i, Result r; test.r){
						if(r != Result.UNTESTED && r < oldResults[i]){
							oldResults[i] = r;
						}
					}
				}
			}

			if(hadOldData){
				foreach(size_t i, Result r; oldResults){
					if((currentTest.r[i] != Result.UNTESTED) && (r != Result.MAX) && (currentTest.r[i] > r)){
						back ~= new Regression(currentTest.name, currentTest.file, r, currentTest.r[i], TORTURE_FLAGS[i]);
					}
				}
			}
		}
		return back;
	}

	Regression[] findRegressions(Log oldLog){
		Regression[] back;
		
		foreach(TortureTest t; torture.values){
			TortureTest* oldT = t.file in oldLog.torture;

			if(oldT !is null){
				foreach(size_t i, Result r; t.r){
					if(oldT.r[i] < r && oldT.r[i]){
						back ~= new Regression(t.name, t.file, oldT.r[i], r, TORTURE_FLAGS[i]); 
					}
				}
			}
		}

		return back;
	}

	char[][] genUpdateList(char[] testRoot){
		char[][] updateList;
		const char[][] statusList = ["compile", "nocompile", "run", "norun"];
		char[] status;

		void list(char[] path){
			if(isdir(path)){
				foreach(char[] entry; listdir(path)){
					if(entry.length>0 && entry[0] != '.' && entry[0] != '~'){
						list(path~std.path.sep~entry);
					}
				}
			}else if(isfile(path)){
				char[] file = path[testRoot.length + std.path.sep.length .. $];
				if(!(file in torture)){
					char[] output = "dstress torture-" ~ status ~ " " ~ file;
					updateList ~= output;
				}
			}	
		}
		
		foreach(char[] s; statusList){
			status = s;
			list(testRoot ~ std.path.sep ~ s);
		}

		return updateList;
	}

	void dropBogusResults(FStime recordTime, char[] testRoot){
		uint totalCount = torture.length; 
		
		char[][] sourcesTorture = torture.keys;
		foreach(char[] source; sourcesTorture){
			if(find(source, "complex/") < 0){
				try{
					FStime caseTime = getFStime(testRoot~std.path.sep~source);
					if(caseTime > recordTime){
						debug(drop) fwritefln(stderr, "dropped: %s", source);
						torture.remove(source);
					}
				}catch(Exception e){
					debug(drop) fwritefln(stderr, "dropped: %s", source);
					torture.remove(source);
				}
			}
		}
		torture.rehash;
		
		writefln("dropped %s outdated tests (%s remaining)", totalCount - torture.length, torture.length); 
	}

	
	bool add(char[] line){
		const char[] SUB = "Torture-Sub-";
		const char[] TORTURE = "Torture:";

		line = strip(line);
		int id = -1;
		Result r = Result.UNTESTED;

		if(line.length > SUB.length && line[0 .. SUB.length] == SUB){
			line = line[SUB.length .. $];
			id = 0;
			while(line[id] >= '0' && line[id] <= '9'){
				id++;
			}
			int start = id;
			id = std.conv.toUint(line[0 .. id]);

			while(line[start] != '-'){
				start++;
			}
			line = line[start+1 .. $];
		}

		char[][] token = split(line);
		if(token.length < 2){
			return false;
		}
		char[] file = strip(token[1]);

		switch(token[0]){
			case "PASS:":
				r = Result.PASS; break;
			case "FAIL:":
				r = Result.FAIL; break;
			case "XPASS:":
				r = Result.XPASS; break;
			case "XFAIL:":
				r = Result.XFAIL; break;
			case "ERROR:":
				r = Result.ERROR; break;
			default:{
				if(token[0] == TORTURE){
					throw new Exception("not yet handled: "~line);
				}else if(id > -1){
					throw new Exception(format("bug in SUB line: (%s) %s", id, line));
				}
			}
		}

		if(r != Result.UNTESTED){
			if(std.string.find(line, "bad error message") > -1){
				r |= Result.BAD_MSG;	
			}
			if(std.string.find(line, "bad debugger message") > -1){
				r |= Result.BAD_MSG;	
			}
			
			file = cleanFileName(file);
			
			if(id >= 0){
				// update sub
				id--;
		
				TortureTest* test = file in torture;

				if(test is null){
					TortureTest t = new TortureTest(file);
					torture[file] = t;
					t.r[id] = r;
				}else{
					if(test.r[id] != Result.UNTESTED){
						test.r[] = Result.UNTESTED;
					}
					test.r[id] = r;
				}
			}
			return true;
		}
		return false;
	}
}

class Regression{
	Result before;
	Result after;
	char[] file;
	char[] name;
	char[] extInfo;

	this(char[] name, char[] file, Result oldR, Result newR, char[] addonInfo=null){
		this.file = file;
		this.name = name;
		before = oldR;
		after = newR;
		extInfo = addonInfo;
	}

	char[] toString(){
		char[] back = .toString(before) ~" -> "~.toString(after)~": "~file;
		if(extInfo.length > 0){
			back ~= " ("~extInfo~")";
		}
		return back;
	}
}

class Report{
	char[] root;
	Log[] log;
	static const char[] header =
		"<th>&#160;</th><th>-g</th><th>-inline</th>"
		"<th>-fPIC</th><th>-O</th><th>-release</th>"
		"<th>-g -inline</th><th>-g -fPIC</th><th>-g -O</th>"
		"<th>-g -release</th><th>-inline -fPIC</th>"
		"<th>-inline -O</th><th>-inline -release</th>"
		"<th>-fPIC -O</th><th>-fPIC -release</th>"
		"<th>-O -release</th><th>-g -inline -fPIC</th>"
		"<th>-g -inline -O</th><th>-g -inline -release</th>"
		"<th>-g -fPIC -O</th><th>-g -fPIC -release</th>"
		"<th>-g -O -release</th><th>-inline -fPIC -O</th>"
		"<th>-inline -fPIC -release</th><th>-inline -O -release</th>"
		"<th>-fPIC -O -release</th><th>-g -inline -fPIC -O</th>"
		"<th>-g -inline -fPIC -release</th>"
		"<th>-g -fPIC -O -release</th>"
		"<th>-inline -fPIC -O -release</th>"
		"<th>-g -inline -fPIC -O -release</th>"
		"<th>-g -inline -O -release</th>";
	
	this(char[] root, Log[] log){
		this.root = root;
		this.log = log;
	}

	void toHtml(OutputStream summary, OutputStream[] cases, bool[] hotspot){
		
		if(cases.length != log.length || cases.length != hotspot.length){
			throw new Exception("unexpected argument length");
		}
		foreach(size_t i, Log l; log){
			toHtml(l, cases[i]);
		}
		toHtmlSummary(summary, hotspot);
	}

	static char[] cleanFileName(char[] name){
		int i = rfind(name, "_");
		if(i > -1){
			name = name[i+1 .. $];
		}
		i = rfind(name, ".");
		if(i > -1){
			name = name[0 .. i];
		}
		return name;
	}
	
	static char[] streamLine(uint[] stats){
		char[] buffer;
		foreach(uint i; stats){
			buffer ~= "<td>"~std.string.toString(i)~"</td>";
		}
		return buffer;
	}

	static void toHtml(Log log, OutputStream stream){
		char[] cleanName = cleanFileName(log.id);
		{ // header
			char[] name = toupper(cleanName);
		
			stream.writeLine("<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>");
			stream.writeLine("<html xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>");

			stream.writeLine("<head><title>DStress - Torture: "~name~"</title><link rel='stylesheet' type='text/css' href='formate.css' /><meta name='author' content='Thomas K&#252;hne' /><meta name='date' content='" ~ dateString() ~ "' /></head>");
			stream.writeLine("<body><center><h1>DStress - Torture: "~name~"</h1></center><center><small>by Thomas K&#252;hne &lt;thomas-at-kuehne.cn&gt;</small></center>");
			stream.writeLine("<h2><a name='note' id='note'></a>Note</h2><blockquote>A detailed description of the testing and the used symbols can be found on the <a href='./dstress.html'>main page</a>.</blockquote>");
		}
		
		{ // stats
			stream.writeLine("<h2><a name='summary' id='summary'></a>Summary</h2>");
			uint[][] stats;
			stats.length = 6;
			foreach(inout uint[] array; stats){
				array.length = TORTURE_FLAGS.length;
			}

			foreach(TortureTest t; log.torture){
				foreach(int i, Result r; t.r){
					stats[r >> 2][i]++;
				}
			}

			
			{ // total
				uint total = 0;
				
				foreach(uint[] cases; stats){
					total += cases[0];
				}

				uint config = 0;
				foreach(uint[] a; stats[1 .. $]){
					foreach(uint b; a){
						config += b;
					}
				}
				
				stream.writeLine(format("<blockquote><dl><dt><strong>test cases:</strong></dt><dd>%d</dd><dt><strong>tested configurations:</strong></dt><dd>%d</dd></dl></blockquote>", total, config));
			}


			stream.writeLine("<table border='1' summary='nummeric summary of the test results'>");
			stream.writeLine("\t<tr><td>&#160;</td>"~header~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.PASS)~"'><th>PASS</th>" ~ streamLine(stats[Result.PASS >> 2])~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.XFAIL)~"'><th>XFAIL</th>" ~ streamLine(stats[Result.XFAIL >> 2])~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.XPASS)~"'><th>XPASS</th>" ~ streamLine(stats[Result.XPASS >> 2])~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.FAIL)~"'><th>FAIL</th>" ~ streamLine(stats[Result.FAIL >> 2])~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.ERROR)~"'><th>ERROR</th>" ~ streamLine(stats[Result.ERROR >> 2])~"</tr>");
			stream.writeLine("\t<tr class='" ~ cast(char)('A'+Result.UNTESTED)~"'><th>untested</th>" ~ streamLine(stats[Result.UNTESTED >> 2])~"</tr>");
			stream.writeLine("</table>");
		}

		{ // details
			stream.writeLine("<h2><a name='details' id='details'></a>Details</h2>");
			stream.writeLine("<table border='1' summary='detailed listing of all test cases with unexpected results'>");
			stream.writeLine("<tr><td>&#160;</td>"~header~"</tr>");
			
			char[][] keys;
			{
				char[][char[]] k;
				foreach(char[] org; log.torture.keys){
					char[] z = org;
					int i = rfind(z, "/");
					if(i > -1){
						z = z[i+1 .. $];
					}
					i = rfind(z, ".");
					if(i > -1){
						z = z[0 .. i];
					}
					if(z in k && find(org, "complex") < 0){
						throw new Exception("dublicate key "~org);
					}
					k[z] = org;
				}

				foreach(char[] x; k.keys.sort){
					keys ~= k[x];	
				}

			}
			foreach(char[] key; keys){
				TortureTest t = log.torture[key];
				Result plainR = t.condensed();

				if(plainR == Result.PASS
					|| plainR == Result.XFAIL
					|| plainR == Result.UNTESTED)
				{
					continue;
				}else{
					char[] name = replace(t.name, "_", " ");
					char[] src = t.file;
					if(find(src,"complex/") != -1){
						src = src[0 .. rfind(src, "/")];
					}
					char[] back = "<tr><th><a href=\"../"~src~"\" id='"~t.name~"'>"~name~"</a></th>";
					foreach(Result r; t.r){
						back ~= "<td class='" ~ cast(char)(r+'A') ~ "'>";
						if(r == Result.UNTESTED){
							back ~= "-";
						}else{
							try{
								back ~= .toString(r & Result.BASE_MASK);
							}catch(Exception e){
								throw new Exception(t.toString()~" ["~e.toString()~"]");
							}
						}
						back ~= "</td>";
					}
					stream.writeLine(back ~ "</tr>");
				}
			}

			stream.writeLine("<tr><td>&#160;</td>"~header~"</tr>");
			stream.writeLine("</table>");
		}
		
		{ // footer
			stream.writeLine("<div><br /><br /><hr /><a href='http://dstress.kuehne.cn/www/"~cleanName~".html'>http://dstress.kuehne.cn/www/"~cleanName~".html</a>&#160; &#160;" ~ dateString() ~ "</div>");
			stream.writeLine("<!-- Start of StatCounter Code -->");
			stream.writeLine("<script type='text/javascript'><!-- var sc_project=1337754; var sc_invisible=1; var sc_partition=12; var sc_security=\"a4a998fe\"; var sc_remove_link=1; //--> </script>");
			stream.writeLine("<script type='text/javascript' src='http://www.statcounter.com/counter/counter_xhtml.js'></script><noscript><div class='statcounter'><img src='http://c13.statcounter.com/counter.php?sc_project=1337754&amp;amp;java=0&amp;amp;security=a4a998fe&amp;amp;invisible=1' class='statcounter' alt='counter' /></div></noscript>");
			stream.writeLine("<!-- End of StatCounter Code -->");

			stream.writeLine("</body></html>");
		}
	}

	void toHtmlSummary(OutputStream stream, bool[] hotspot){
		if(hotspot.length != log.length){
			throw new Exception("illegal hotspot length");
		}

		char[][] names;
		
		foreach(Log l; log){
			names ~= l.torture.keys;
		}

		uint[][] stats;
		stats.length = 6;
		foreach(inout uint[] array; stats){
			array.length = log.length;
		}
		

		char[][char[]] keys;
		{
			foreach(char[] org; unique(names)){
				char[] z = org;
				int i = rfind(z, "/");
				if(i > -1){
					z = z[i+1 .. $];
				}
				i = rfind(z, ".");
				if(i > -1){
					z = z[0 .. i];
				}
				if(z in keys && -1 == find(org, "complex/")){
					throw new Exception("dublicate key "~org);
				}
				keys[z] = org;
			}

		}

		{ // total
			uint total = keys.keys.length;
			for(size_t i = 0; i < stats[0].length; i++){
				stats[0][i] = total;
			}
		}

		char[][] badLines;
		foreach(char[] name; keys.keys.sort){
			char[] file = keys[name];
			Result[] result = new Result[log.length];
			bool isBadLine;
			foreach(size_t i, Log l; log){
				auto t = file in l.torture;		

				if(t){
					Result r = t.condensed();
					result[i] = r;

					if(r != Result.UNTESTED){
						stats[result[i] >> 2][i]++;
						stats[0][i]--;
						if(hotspot[i] && r>= Result.XPASS){
							isBadLine = true;
						}
					}
				}

			}
			
			if(isBadLine){
				char[] cleanName = replace(name, "_", " ");
				char[] back = "<tr><th><a href=\"../"~file~"\" id='"~name~"'>"~cleanName~"</a></th>";
				foreach(Result r; result){
					back ~= "<td class='" ~ cast(char)(r+'A') ~ "'>";
					if(r == Result.UNTESTED){
						back ~= "-";
					}else{
						try{
							back ~= .toString(r & Result.BASE_MASK);
						}catch(Exception e){
							throw new Exception("name:" ~name~" ["~e.toString()~"]");
						}
					}
					back ~= "</td>";
				}
				badLines ~= back ~ "</tr>";
			}
		}


		// output
		stream.writeLine("<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>");
		stream.writeLine("<html xmlns='http://www.w3.org/1999/xhtml'>");
		stream.writeLine("<head><title>DStress Report</title><link rel='stylesheet' type='text/css' href='formate.css' /><meta name='author' content='Thomas K&#252;hne' /><meta name='date' content='"~dateString()~"' /></head>");
		stream.writeLine("<body><center><h1>DStress Report</h1></center>");
		stream.writeLine("<h2><a name='note' id='note'></a>Note</h2>");
		stream.writeLine("<blockquote><p>A detailed description of the testing and the used symbols can be found on the <a href='./dstress.html'>main page</a>.</p></blockquote>");
		stream.writeLine("<h2><a name='summary' id='summary'></a>Summary</h2>");

		stream.writeLine("<table border='1' summary='nummeric summary of the test results'>");
		char[] versionHeader = "<tr><td>&#160;</td>";
		{ // version header
			foreach(Log l; log){
				char[] name = l.id;
				int i = rfind(name, "/");
				if(i > -1){
					name = name[i+1 .. $];
				}
				i = rfind(name, ".log");
				if(i + ".log".length == name.length){
					name = name[0 .. i];
				}
				versionHeader ~= "<th><a href='./" ~ cleanFileName(l.id) ~ ".html'>"~replace(name, "_", " ")~"</a></th>";
			}
			versionHeader ~= "</tr>";
		}
		
		stream.writeLine("\t<tr><td>&#160;</td>"
			"<th class='" ~ cast(char)('A'+Result.PASS)~"'>PASS</th>"
			"<th class='" ~ cast(char)('A'+Result.XFAIL)~"'>XFAIL</th>"
			"<th class='" ~ cast(char)('A'+Result.XPASS)~"'>XPASS</th>"
			"<th class='" ~ cast(char)('A'+Result.FAIL)~"'>FAIL</th>"
			"<th class='" ~ cast(char)('A'+Result.ERROR)~"'>ERROR</th>"
			"<th class='" ~ cast(char)('A'+Result.UNTESTED)~"'>UNTESTED</th></tr>");
		foreach(size_t j, Log l; log){
			char[] row ="\t<tr>";
			char[] name = l.id;
			int i = rfind(name, "/");
			if(i > -1){
				name = name[i+1 .. $];
			}
			i = rfind(name, ".log");
			if(i + ".log".length == name.length){
				name = name[0 .. i];
			}
			row ~= "<th><a href='./" ~ cleanFileName(l.id) ~ ".html'>"~replace(name, "_", " ")~"</a></th>";
			row ~= "<td class='" ~ cast(char)('A'+Result.PASS)~"'>" ~ std.string.toString(stats[Result.PASS >> 2][j]) ~"</td>";
			row ~= "<td class='" ~ cast(char)('A'+Result.XFAIL)~"'>" ~ std.string.toString(stats[Result.XFAIL >> 2][j]) ~"</td>";
			row ~= "<td class='" ~ cast(char)('A'+Result.XPASS)~"'>" ~ std.string.toString(stats[Result.XPASS >> 2][j]) ~"</td>";
			row ~= "<td class='" ~ cast(char)('A'+Result.FAIL)~"'>" ~ std.string.toString(stats[Result.FAIL >> 2][j]) ~"</td>";
			row ~= "<td class='" ~ cast(char)('A'+Result.ERROR)~"'>" ~ std.string.toString(stats[Result.ERROR >> 2][j]) ~"</td>";
			row ~= "<td class='" ~ cast(char)('A'+Result.UNTESTED)~"'>" ~ std.string.toString(stats[Result.UNTESTED >> 2][j]) ~"</td>";
			stream.writeLine(row ~ "</tr>");
		}
		stream.writeLine("</table>");

		stream.writeLine("<h2><a name='details' id='details'></a>Details</h2>");
		stream.writeLine("<table border='1'>");
		stream.writeLine(versionHeader);
		foreach(char[] line; badLines){
			stream.writeLine(line);
		}
		stream.writeLine(versionHeader);
		stream.writeLine("</table>");
		
		stream.writeLine("<div><br /><br /><hr /><a href='http://dstress.kuehne.cn/www/results.html'>http://dstress.kuehne.cn/www/results.html</a>&#160; &#160;"~dateString()~"</div>");

		stream.writeLine("<!-- Start of StatCounter Code -->");
		stream.writeLine("<script type='text/javascript'><!-- var sc_project=1337754; var sc_invisible=1; var sc_partition=12; var sc_security=\"a4a998fe\"; var sc_remove_link=1; //--> </script>");
		stream.writeLine("<script type='text/javascript' src='http://www.statcounter.com/counter/counter_xhtml.js'></script><noscript><div class='statcounter'><img src='http://c13.statcounter.com/counter.php?sc_project=1337754&amp;amp;java=0&amp;amp;security=a4a998fe&amp;amp;invisible=1' class='statcounter' alt='counter' /></div></noscript>");
		stream.writeLine("<!-- End of StatCounter Code -->");

		stream.writeLine("</body></html>");
	}
}

int main(char[][] args){

	if(args.length < 4){
		fwritefln(stderr, "%s <command> <root> <log.1> [<log.2> ...]", args[0]);
		fwritefln(stderr, "known commands: genUpdateList findRegressions genReport");
		return 1;
	}
	
	
	char[] command = args[1];
	char[] root = args[2];
	if(root.length < 1){
		root = ".";
	}
	debug fwritefln(stderr, "command: %s", command);
	debug fwritefln(stderr, "root: %s", root);

	Report report = new Report(root, null);
	bool[] hotspot;

	switch(command){
		case "genUpdateList", "findRegressions", "genReport": break;
		default:{
			fwritefln(stderr, "unknown command: %s", command);
			return -1;
		}
	}

	foreach(size_t id, char[] file; args[3 .. $]){
		if(file.length > "--".length && file[0 .. 2] == "--"){
			file = file[2..$];
			hotspot ~= true;
		}else{
			hotspot ~= false;
		}

		writefln("parsing: %s", file);
		FStime logTime  = getFStime(file);
		debug fwritefln(stderr, "sourceTime: %s", logTime);

		Log l= new Log(file);
		Stream source = new BufferedFile(file, FileMode.In);
		while(!source.eof()){
			l.add(source.readLine());
		}
		
		l.dropBogusResults(logTime, root);

		report.log ~= l;
	}

	switch(command){
		case "genUpdateList":{
			foreach(Log l; report.log){
				char[][] update = l.genUpdateList(root);
				writefln("%s updates required (%s still up to date)", update.length, l.torture.length);

				char[] updateFile = l.id ~ ".update";
				try{std.file.remove(updateFile);}catch{}

				if(update.length){
					File f = new File(updateFile, FileMode.OutNew);
					foreach(char[] line; update){
						f.writeLine(line);
					}
					f.close();
				}
			}
			break;
		}case "findRegressions":{
			foreach(size_t i, Log newLog; report.log[1..$]){
				Regression[] newReg = newLog.findRegressions(report.log[i]);
				writefln("identified %s new regressions for %s", newReg.length, newLog.id);
			
				Regression[] oldReg;
				{
					Regression[] oldRegT = newLog.findGlobalRegressions(report.log[0 .. i]);
					foreach(Regression a; oldRegT){
						foreach(Regression b; newReg){
							if(a.file == b.file && (!a.extInfo || a.extInfo == b.extInfo)){
								goto handled;
							}
						}

						oldReg ~= a;
					handled: {}
					}
				}
				
				writefln("identified %s old regressions for %s", oldReg.length, newLog.id);

				char[] regressionFile = newLog.id ~ ".regression";
				try{std.file.remove(regressionFile);}catch{}
				
				if(newReg.length + oldReg.length){
					File f = new File(regressionFile, FileMode.OutNew);

					if(newReg.length){
						f.writeLine(format("%s new regressions", newReg.length));
						foreach(Regression r; newReg){
							f.writeLine(r.toString());
						}
					}

					if(oldReg.length){
						if(newReg.length){
							f.writeLine("");
						}
						f.writeLine(format("%s old regressions", oldReg.length));
						foreach(Regression r; oldReg){
							f.writeLine(r.toString());
						}
					}
					
					f.close();
				}
			}
			break;	
		}case "genReport":{
			OutputStream[] html;
			OutputStream o = new File("./www/results.html", FileMode.OutNew);
			foreach(Log l; report.log){
				html ~= new File("./www/"~Report.cleanFileName(l.id)~".html", FileMode.OutNew);
			}

			report.toHtml(o, html, hotspot);
			
			o.close();
			foreach(OutputStream o; html){
				o.close();
			}

			break;
		}default:{
			fwritefln(stderr, "unknown command: %s", command);
			return -1;
		}
	}
	
	return 0;
}

