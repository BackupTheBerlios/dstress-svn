// §DSTRESS_FLAGS§ -debug=A1

module stress.run.command_line_debug_08;

int main(){
	version(A1){
		return 0;
	}else{
		static assert(0);
	}
}
