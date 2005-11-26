// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_D;

template T(ifloat f){
	ifloat cf = f;
}

int main(){
	const ifloat a = 1.2i;
	assert(T!(a).cf == a);

	const ifloat b = -0.8i;
	assert(T!(b).cf == b);

	return 0;
}
