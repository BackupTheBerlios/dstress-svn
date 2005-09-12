// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-08-29
// @uri@	news:op.sv8t4kggaaezs2@ilya.tec.amursk.ru

module dstress.run.c.class_18_A;

class Foo {
	const int x = 1;
	
	static class Foo {
		const int x = 2;
	}

	static class Bar : .Foo{
	}
}

int main(){
	Foo.Bar a = new Foo.Bar;
	assert(Foo.x == 1);
	assert(Foo.Foo.x == 2);
	assert(a.x == 1);
	
	return 0;
}