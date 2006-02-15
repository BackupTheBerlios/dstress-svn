// $HeadURL$
// $Date$
// $Author$

// Porting: C#

// __DSTRESS_ELINE__ 23

module dstress.nocompile.i.interface_22_B;

interface A{
	void foo();
}

interface B{
	void foo();
}

class C : A, B{
	void foo(){
	}

	void A.foo(){
	}

	void B.foo(){
	}
}
