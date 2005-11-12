module cn.kuehne.uniquefile;

private import std.file;
private import std.stdio;
private import std.path;

private char[][char[]] known;
private uint doppelgaenger;

version(reporters){
	private import std.string;
	private uint[char[]] reporters;
}

private char[] lastPathElem(char[] path){
	size_t end=path.length-1;
	size_t start;
	
	for(end = path.length-1; path[end]==std.path.sep[0]; end--){
		if(end==0){
			return std.path.sep;
		}
	}

	for(start = end-1; start<start.max; start--){
		if(path[start]==std.path.sep[0]){
			break;
		}
	}
	
	if(start==start.max){
		start=0;
	}else{
		start+=1;
	}
	return path[start .. end+1];
}

private void add(char[] file){
	char[] base = lastPathElem(file);
	
	if(isfile(file)){
		char[]* tmp = base in known;
		if(tmp){
			fwritef(stdout, "%s :\n\t%s\n\t%s\n", base, file, *tmp);
			doppelgaenger++;
		}else{
			known[base] = file;
		}
		
		version(reporters){
			// only works for UTF-8
			char[] data=cast(char[]) read(file);
			
			size_t index = find(data, "@author@");
			if(index != index.max){				
				data = data[index + "@author@".length .. data.length];
				
				foreach(char end; "\r\n\x00\x0A"){
					index = find(data, end);
					if(index != index.max){
						data = data[0 .. index];
					}
				}
		
				data = strip(data);
				
				version(verbose){
					if(data in reporters){
						reporters[data]++;
					}else{
						reporters[data]=1;
					}
				}else{
					reporters[data]=1;
				}
			}
		}
	}
	
	if(isdir(file) && (base[0]!='.')){
		foreach(char[] entry; listdir(file)){
			add(file~std.path.sep~entry);
		}
	}
}

int main(char[][] args){
	if(args.length<2){
		fwritef(stderr, "at least one directory name is required as argument\n");
		return -1;
	}
	
	doppelgaenger = 0;
	
	foreach(char[] file; args[1 .. args.length]){
		if(file=="."){
			file=getcwd();
		}
		add(file);
	}

	version(verbose){
		foreach(char[] entry; known.keys.sort){
			fwritef(stderr, "\t%s\n", known[entry]);
		}
	}
	
	version(reporters){
		foreach(char[] entry; reporters.keys.sort){
			version(verbose){
				fprintf(stderr, "%i\t%.*s\n", reporters[entry], entry);
			}else{
				fprintf(stderr, "%.*s\n", entry);
			}
		}	
	}
	
	fwritef(stdout, "hits : %s\n", doppelgaenger);

	return doppelgaenger > 0;
}
