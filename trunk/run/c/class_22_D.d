// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-03-01
// @uri@	news:du4ojh$1b0n$1@digitaldaemon.com
// @desc@	dmd: toobj.c:191: virtual void ClassDeclaration::toObjFile(): Assertion `!scope' failed.

module dstress.run.c.class_22_D;

template T(){
	class A{
		int x(){
			return 1;
		}
	}

	class B : A{
		int x(){
			return super.x() + 1;
		}
	}
}

int main(){
	mixin T!();

	A a = new A();

	if(a.x() != 1){
		assert(0);
	}


	B b = new B();

	if(b.x() != 2){
		assert(0);
	}


	A c = new B();

	if(c.x() != 2){
		assert(0);
	}

	return 0;
}
