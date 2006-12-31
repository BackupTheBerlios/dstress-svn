// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-05-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=133

module dstress.run.c.class_23_B;

class Foo : Bar {
}

class FooT(V){
}

class Bar : FooT!(int) {
}

int main(){
	Foo f = new Foo();

	if(!f){
		assert(0);
	}

	return 0;
}

