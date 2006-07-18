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
	if(sa.cf != a){
		assert(0);
	}

	const creal b = -0.8L - 0.1Li;
	auto sb = new C!(b);
	if(sa.cf != b){
		assert(0);
	}

	return 0;
}
