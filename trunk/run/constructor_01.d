
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
