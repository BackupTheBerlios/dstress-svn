// $HeadURL$
// $Date$
// $Author$

// @author@	<onlystupidspamhere@yahoo.se>
// @date@	2007-06-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1259
// @desc@	[Issue 1259] Inline build triggers an illegal error msg "Error: S() is not an lvalue"

module dstress.run.t.tuple_25_C;

struct S(T...) {
	S opMul_r(double r) {
		return S();
	}
	
	S!(1) opDiv(R)(R r) {
		return S!(1)();
	}
}

int main() {
	S!(1) a;
	S!(0) b;
	auto c = 1.0 * a / 0.5;

	if(S!(1)() != c){
		assert(0);
	}
	return 0;
}
