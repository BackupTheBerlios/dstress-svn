// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/deprecated_05.d,v 1.1 2004/08/23 17:18:31 th Exp $

class MyClass{
	deprecated this(char[] c){
	}
}

int main(){
	MyClass c = new MyClass("abc");
	return 0;
}
