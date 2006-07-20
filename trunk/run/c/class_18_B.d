// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-08-29
// @uri@	news:op.sv8t4kggaaezs2@ilya.tec.amursk.ru

module dstress.run.c.class_18_B;

class Foo {
	const int x = 1;

	static class Foo {
		const int x = 2;
	}

	alias .Foo gFoo;

	static class Bar : gFoo{
	}
}

int main(){
	Foo.Bar a = new Foo.Bar;
	if(Foo.x != 1){
		assert(0);
	}
	if(Foo.Foo.x != 2){
		assert(0);
	}
	if(a.x != 1){
		assert(0);
	}

	return 0;
}
