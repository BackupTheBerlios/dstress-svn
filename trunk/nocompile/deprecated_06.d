// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/deprecated_06.d,v 1.1 2004/08/23 17:18:31 th Exp $

class MyClass{
	deprecated static check(){
	}
}

int main(){
	MyClass c = new MyClass();
	c.check();
	return 0;
}
