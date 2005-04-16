// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xo4fhaaezs2@robingood
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2982

// __DSTRESS_ELINE__ 26

module dstress.nocompile.alias_16;

class A{
	int foo;
}

class B{
	A a;
}

int main(){
	B b=new B();
	assert(b.a.foo==0);
	{
		alias b.a.foo bar;
		bar++;
	}
	assert(b.a.foo==1);
	return 0;
} 
