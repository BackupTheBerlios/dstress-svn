// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/static_02.d,v 1.1 2004/08/20 23:42:54 th Exp $

class MyClass{
	static int check(){
		return 9;
	}
}

int main(){
	MyClass c;
	return c.check() - 9;
}
