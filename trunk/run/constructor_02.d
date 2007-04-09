// $HeadURL$
// $Date$
// $Author$

// @author@	Bastiaan Veelo <Bastiaan.N.Veelo@ntnu.no>
// @date@	2004-09-21
// @uri@	news:cip39j$v4s$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1890

module dstress.run.constructor_02;

int status;

template ctor(){
	this(){
		this(2);
	}
	this(int i){
		status+=i;
	}
}

class MyClass{
	mixin ctor;
}

int main(){
	assert(status==0);
	MyClass object = new MyClass();
	assert(status==2);
	object = new MyClass(3);
	assert(status==5);
	return 0;
}
