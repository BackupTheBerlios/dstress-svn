// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_class_13_U;

class C(creal f){
	creal cf = f;
}

int main(){
	const creal a = 1.2L + 2.1Li;
	C!(a) sa = new C!(a);
	if(sa.cf != a){
		assert(0);
	}

	const creal b = -0.8L - 0.1Li;
	C!(b) sb = new C!(b);
	if(sb.cf != b){
		assert(0);
	}

	return 0;
}
