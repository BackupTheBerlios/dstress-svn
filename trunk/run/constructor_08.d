// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2004-12-21
// @uri@	news:opsja8b9ddaaezs2@robingood
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2584

module dstress.run.constructor_08;

class A{
	this() {}
}

class B : A {
	int foo;
	this {}
}

class C : B {
	int bar;

	this(){
		foo = 0;
		bar = 1;
	}
}

int main(){
	C c = new C();
	assert(c.foo==0);
	assert(c.bar==1);
	c.foo=2;
	assert(c.foo==2);
	assert(c.bar==1);
	c.bar=-1;
	assert(c.foo==2);
	assert(c.bar==-1);
	return 0;
}
