// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_X;

class C(creal f){
	auto cf = f;
}

int main(){
	const creal a = 1.2 + 2.1i;
	auto sa = new C!(a);
	assert(sa.cf == a);

	const creal b = -0.8 - 0.1i;
	auto sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
