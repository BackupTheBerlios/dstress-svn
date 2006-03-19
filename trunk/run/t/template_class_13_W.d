// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_W;

class C(creal f){
	creal cf = f;
}

int main(){
	const creal a = 1.2L + 2.1Li;
	auto sa = new C!(a);
	assert(sa.cf == a);

	const creal b = -0.8L - 0.1Li;
	auto sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
