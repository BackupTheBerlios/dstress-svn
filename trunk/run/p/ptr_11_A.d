// $HeadURL$
// $Date$
// $Author$

module dstress.run.p.ptr_11_A;

class C{
	void test(){
	}
}

int main(){
	C c = new C();
	void delegate() d = &c.test;
	if(d.ptr !is c){
		assert(0);
	}

	return 0;
}
