// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_S;

class C(cdouble f){
	cdouble cf = f;
}

int main(){
	const cdouble a = 1.2 + 2.1i;
	auto sa = new C!(a);
	assert(sa.cf == a);

	const cdouble b = -0.8 - 0.1i;
	auto sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
