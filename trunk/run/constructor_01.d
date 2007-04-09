// $HeadURL$
// $Date$
// $Author$

// @author@	Stephan Wienczny <wienczny@web.de>
// @date@	2004-04-30
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=44

module dstress.run.constructor_01;

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
