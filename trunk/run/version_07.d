// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_07.d,v 1.1 2004/08/20 23:42:55 th Exp $

version = AA;

int main(){
	int check=0;
	
	version(CC){
		check++;
	}

	assert(check==1);

	return 0;
}

version(BB){
	version = DD;
}else{
	version = CC;
}