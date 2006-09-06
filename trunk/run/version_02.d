// $HeadURL$
// $Date$
// $Author$

module dstress.run.version_02;

int main(){
	int os;
	
	version(Win32){
		os+=2;
	}
	
	version(Win64){
		os+=2;
	}
	
	version(Windows){
		os--;
	}
	
	version(linux){
		os++;
	}

	version(darwin){
		static assert(0); // this isn't yet part of the standard (v 0.166)
	}

	version(Unix){
		static assert(0); // this isn't yet part of the standard (v 0.166)
	}

	version(solaris){
		static assert(0); // this isn't yet part of the standard (v 0.166)
	}
	
	if(os != 1){
		assert(0);
	}
	
	return 0;
}
