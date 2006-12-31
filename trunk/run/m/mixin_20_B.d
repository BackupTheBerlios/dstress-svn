// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-04-13
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=105

module dstress.run.m.mixin_20_A;

template T( int i ){
	int opCall(){
		return i;
	}
}

class C {
	mixin T!( 1 ) a;
	mixin T!( 2 ) b;
}

int main(){
	C c = new C();

	if(c.a() != 1){
		assert(0);
	}

	if(c.b() != 2){
		assert(0);
	}

	return 0;
}
