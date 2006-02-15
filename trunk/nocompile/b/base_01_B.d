// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 19

module dstress.nocompile.b.base_01_B;

class A{
	int foo(){
		return 1;
	}
}

class B : A{
	int test(){
		return base.foo() + 1;
	}
}
