
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
		os=+3;
	}

	version(darwin){
		os=+3;
	}

	version(Unix){
		os=-2;
	}
	
	assert(os == 1);
	
	return 0;
}
