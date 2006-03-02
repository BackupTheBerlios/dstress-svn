// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-02
// @uri@	news:du4ong$1b0n$2@digitaldaemon.com
// @desc@	func.c:373: virtual void FuncDeclaration::semantic3(Scope*): Assertion `0' failed.

module dstress.run.t.this_10_C;

int status;

template T(){
	class A{
	}
	
	class B : A{
		this(){
			status++;
		}
	}
}

int main(){
	mixin T!();
	
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
