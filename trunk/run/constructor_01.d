// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/constructor_01.d,v 1.1 2004/08/20 23:42:52 th Exp $

// @author@	Stephan Wienczny <wienczny@web.de>
// @date@	2004-04-30
// @uri@	news://c6tkos$2a78$1@digitaldaemon.com

class ClassA{}

class ClassB{}

class ClassC{
	ClassA a;
	ClassB b;
	
	this(){
		a=new ClassA();
		b=new ClassB();
	}
}

int main(){
	ClassC c = new ClassC();
	return 0;
}
