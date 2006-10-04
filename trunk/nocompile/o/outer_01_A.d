// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.o.outer_01_A;

class A{
	void* test(){
		return this.outer;
	}
}

int main(){
	A a = new A();

	return 0;
}
