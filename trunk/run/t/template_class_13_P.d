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
	if(sa.cf != a){
		assert(0);
	}

	const cfloat b = -0.8f - 0.1fi;
	auto sb = new C!(b);
	if(sb.cf != b){
		assert(0);
	}

	return 0;
}
