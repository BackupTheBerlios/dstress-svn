// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_05.d,v 1.1 2004/08/20 23:42:55 th Exp $

int main(){
	int check=0;
	
	version(none){
		check++;
	}

	assert(check==0);

	return 0;
}