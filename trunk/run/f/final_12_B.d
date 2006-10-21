// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2006-10-17
// @uri@	news:bug-440-3@http.d.puremagic.com/issues/
// @desc@	[Issue 440] New: dmd.170 fails to mark final methods as implementations of abstract ones

module dstress.run.f.final_12_B;

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
	I i = new C();
	if(i.foo() != 1){
		assert(0);
	}

	return 0;
}
