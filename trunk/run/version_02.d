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
		assert(0); // this isn't yet part of the standard (v0.111)
	}

	version(Unix){
		assert(0); // this isn't yet part of the standard (v0.111)
	}

	version(solaris){
		assert(0); // this isn't yet part of the standard (v0.111)
	}
	
	assert(os == 1);
	
	return 0;
}
