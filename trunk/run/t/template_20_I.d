// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_I;

template T(creal f){
	creal cf = f;
}

int main(){
	const creal a = 1.2 + 2.1i;
	assert(T!(a).cf == a);

	const creal b = -0.8 - 0.1i;
	assert(T!(b).cf == b);

	return 0;
}
