// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/static_09.d,v 1.1 2004/08/20 23:42:45 th Exp $

class MyClass{
	void doIt(){}
	static void check(){
		doIt();
	}
}

int main(){
	MyClass c = new MyClass();

	return 0;
}
