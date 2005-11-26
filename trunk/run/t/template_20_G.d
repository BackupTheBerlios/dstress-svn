// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_G;

template T(cfloat f){
	cfloat cf = f;
}

int main(){
	const cfloat a = 1.2 + 2.1i;
	assert(T!(a).cf == a);

	const cfloat b = -0.8 - 0.1i;
	assert(T!(b).cf == b);

	return 0;
}
