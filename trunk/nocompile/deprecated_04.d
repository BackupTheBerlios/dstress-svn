// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/deprecated_04.d,v 1.1 2004/08/23 17:18:31 th Exp $

class MyClass{
	this(int a){
		this("abc");
	}
	deprecated this(char[] c){
	}
}

int main(){
	MyClass c = new MyClass(1);
	return 0;
}
