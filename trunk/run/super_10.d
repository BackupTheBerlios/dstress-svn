// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-01-23
// @uri@	news:ct0lj6$si1$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2744

module dstress.run.super_10;

class MyClass{
	this(){
		super();
	}
}

int main(){
	MyClass c = new MyClass();
	return 0;
}