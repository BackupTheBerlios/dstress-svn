// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_Q;

class C(cdouble f){
	cdouble cf = f;
}

int main(){
	const cdouble a = 1.2 + 2.1i;
	C!(a) sa = new C!(a);
	if(sa.cf != a){
		assert(0);
	}

	const cdouble b = -0.8 - 0.1i;
	C!(b) sb = new C!(b);
	if(sb.cf != b){
		assert(0);
	}

	return 0;
}
