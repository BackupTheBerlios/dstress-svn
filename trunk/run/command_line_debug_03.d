// __DSTRESS_DFLAGS__ -debug=abc

module stress.run.command_line_debug_03;

int main(){
	debug(abc){
		return 0;
	}else{
		static assert(0);
	}
}
