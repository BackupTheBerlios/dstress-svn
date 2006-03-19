// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_P;

class C(cfloat f){
	auto cf = f;
}

int main(){
	const cfloat a = 1.2f + 2.1fi;
	auto sa = new C!(a);
	assert(sa.cf == a);

	const cfloat b = -0.8f - 0.1fi;
	auto sb = new C!(b);
	assert(sa.cf == b);

	return 0;
}
