// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/version_08.d,v 1.1 2004/08/20 23:42:55 th Exp $

version = 4;

int main(){

	version(5){
		assert(0);
	}

	version(4){
		assert(1);
	}else{
		assert(0);
	}

	version(3){
		version(4){
			assert(1);
		}else{
			assert(0);
		}
	}else{
		assert(0);
	}

	return 0;
}
