// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6414
// @desc@	func.c:373: virtual void FuncDeclaration::semantic3(Scope*): Assertion `0' failed.

module dstress.run.t.this_10_A;

int status;

template T(){
	class B : A{
		this(){
			status++;
		}
	}

	class A{
	}
}

mixin T!();

int main(){
	if(status != 0){
		assert(0);
	}

	A a = new A();

	if(status != 0){
		assert(0);
	}

	B b = new B();

	if(status != 1){
		assert(0);
	}

	A c = new B();

	if(status != 2){
		assert(0);
	}

	return 0;
}
