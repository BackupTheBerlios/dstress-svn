// __DSTRESS_DFLAGS__ -debug

module stress.run.command_line_debug_01;

int main(){
	debug{
		return 0;
	}else{
		static assert(0);
	}
}
