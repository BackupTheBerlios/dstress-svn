// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -debug=1

module stress.run.command_line_debug_02;

int main(){
	debug(1){
		return 0;
	}else{
		static assert(0);
	}
}
