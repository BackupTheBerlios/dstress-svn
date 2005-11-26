// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_O;

class C(cfloat f){
	cfloat cf = f;
}

int main(){
	const cfloat a = 1.2 + 2.1i;
	auto sa = new C!(a);
	assert(sa.cf == a);

	const cfloat b = -0.8 - 0.1i;
	auto sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
