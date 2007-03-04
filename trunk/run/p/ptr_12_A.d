// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-12-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=696
// @desc@	Error: (dg).ptr is not an lvalue

module dstress.run.p.ptr_12_A;

uint status;

class A {
	void foo(){
		status += 4;
	}
}

int main() {
	A a = new A();
	void delegate() dg;

	dg.ptr = cast(void*)a;
	dg.funcptr = &A.foo;

	if(status != 0){
		assert(0);
	}

	dg();

	if(status != 4){
		assert(0);
	}

	return 0;
}

