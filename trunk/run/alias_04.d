// $HeadURL$
// $Date$
// $Author$

module dstress.run.alias_04;

class A {
	int foo(int a) { return 1; }
}

class B : A {
	int foo( int a, uint b ) { return 2; }
}

class C : B {
	int foo( int a ) { return 3; }
	alias B.foo foo;
}

class D : C  {
}

        
int main(){
	D d = new D();

	assert(d.foo(1, 2u) == 2);   // calls B.foo
	assert(d.foo(1) == 3);       // calls C.foo
	return 0;
}
