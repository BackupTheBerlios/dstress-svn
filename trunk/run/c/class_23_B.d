// $HeadURL$
// $Date$
// $Author$

// @author@	<benoit@tionex.de>
// @date@	2006-05-10
// @uri@	news:bug-133-3@http.d.puremagic.com/bugzilla/

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

