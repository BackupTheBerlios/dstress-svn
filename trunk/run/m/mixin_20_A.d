// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-04-13
// @uri@	news:bug-105-3@http.d.puremagic.com/bugzilla/

module dstress.run.m.mixin_20_A;

template T( int i ){
	int foo(){
		return i;
	}
}

class C {
	mixin T!( 1 ) a;
	mixin T!( 2 ) b;
}

int main(){
	C c = new C();

	if(c.a.foo() != 1){
		assert(0);
	}

	if(c.b.foo() != 2){
		assert(0);
	}

	return 0;
}
