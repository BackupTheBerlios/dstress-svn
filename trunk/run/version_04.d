// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_04.d,v 1.1 2004/08/20 23:42:55 th Exp $

int main(){
	int cpu=0;
	
	version(X86){
		cpu++;
	}

	version(AMD64){
		cpu++;
	}

	assert(cpu==1);

	return 0;
}