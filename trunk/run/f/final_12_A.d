// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-10-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=440
// @desc@	[Issue 440] New: dmd.170 fails to mark final methods as implementations of abstract ones

module dstress.run.f.final_12_A;

int status;

interface I {
	int foo();
}

class C : I {
	final int foo() {
		return ++status;
	}
}

int main() {
	C c = new C();
	if(c.foo() != 1){
		assert(0);
	}
	I i = c;
	if(i.foo() != 2){
		assert(0);
	}

	return 0;
}
