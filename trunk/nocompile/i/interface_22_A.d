// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 20

module dstress.nocompile.i.interface_22_A;

interface A{
	void foo();
}

interface B{
	void foo();
}

class C : A, B{
	void A.foo(){
	}

	void B.foo(){
	}

	void foo(){
	}
}
