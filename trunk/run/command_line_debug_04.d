// §DSTRESS_FLAGS§ -debug=123456789

module stress.run.command_line_debug_04;

int main(){
	debug(123456789){
		return 0;
	}else{
		static assert(0);
	}
}
