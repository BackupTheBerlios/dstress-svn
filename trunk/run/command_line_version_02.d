// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_DFLAGS__ -version=123

module dstress.run.command_line_version_02;

int main(){
	version(123){
		return 0;
	}else{
		static assert(0);
	}
}
