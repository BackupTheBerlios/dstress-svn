// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_06.d,v 1.2 2004/09/22 23:58:17 th Exp $

version = none; // none: _Never_ defined; used to just disable a section of code 

int main(){
	int check=0;
	
	version(none){
		check++;
	}

	assert(check==0);

	return 0;
}
