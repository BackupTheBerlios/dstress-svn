// §DSTRESS_FLAGS§ -version=abc

module dstress.run.command_line_version_01;

int main(){
	version(abc){
		return 0;
	}else{
		static assert(0);
	}
}
