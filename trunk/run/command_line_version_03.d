// §DSTRESS_FLAGS§ -version=A2

module dstress.run.command_line_version_03;

int main(){
	version(A2){
		return 0;
	}else{
		static assert(0);
	}
}
