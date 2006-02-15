// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 17

module dstress.nocompile.s.sealed_01_C;

class A{
	void test(){
	}
}

class B : A{
	sealed override void test(){
	}
}
