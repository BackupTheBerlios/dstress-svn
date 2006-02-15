// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 19

module dstress.nocompile.b.base_01_A;

class A{
	int test(){
		return 1;
	}
}

class B : A{
	int test(){
		return base.test() + 1;
	}
}
