
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
	
	assert(os == 1);
	
	return 0;
}
