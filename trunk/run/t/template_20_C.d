// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_C;

template T(real f){
	real cf = f;
}

int main(){
	const real a = 1.2;
	assert(T!(a).cf == a);

	const real b = -0.8;
	assert(T!(b).cf == b);

	return 0;
}
