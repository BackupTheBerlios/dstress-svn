// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/static_08.d,v 1.1 2004/08/20 23:42:45 th Exp $

class MyClass{
	int status;
	static int check(){
		return status;
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}
