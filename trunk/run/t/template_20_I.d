// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_I;

template T(creal f){
	creal cf = f;
}

int main(){
	const creal a = 1.2L + 2.1Li;
	assert(T!(a).cf == a);

	const creal b = -0.8L - 0.1Li;
	assert(T!(b).cf == b);

	return 0;
}
