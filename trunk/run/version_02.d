// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_02.d,v 1.1 2004/08/20 23:42:55 th Exp $

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