// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/throw_03.d,v 1.1 2004/09/23 11:32:22 th Exp $

class NoException{
}

int main(){
	try{
		throw new NoException();
	}catch{
		assert(0);
	}
	return 0;
}
