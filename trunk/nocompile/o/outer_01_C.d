// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.o.outer_01_C;

class A{
	static class B{
	}

	void* test(){
		B b = new B();
		return b.outer;
	}
}
