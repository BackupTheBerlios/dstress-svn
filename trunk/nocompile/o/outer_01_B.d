// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.o.outer_01_B;

class A{
}

int main(){
	A a = new A();
	void* x = a.outer;

	return 0;
}
