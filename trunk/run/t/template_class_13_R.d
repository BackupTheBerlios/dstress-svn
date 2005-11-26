// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_R;

class C(cdouble f){
	auto cf = f;
}

int main(){
	const cdouble a = 1.2 + 2.1i;
	C!(a) sa = new C!(a);
	assert(sa.cf == a);

	const cdouble b = -0.8 - 0.1i;
	C!(b) sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
