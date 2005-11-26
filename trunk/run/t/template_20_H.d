// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_H;

template T(cdouble f){
	cdouble cf = f;
}

int main(){
	const cdouble a = 1.2 + 2.1i;
	assert(T!(a).cf == a);

	const cdouble b = -0.8 - 0.1i;
	assert(T!(b).cf == b);

	return 0;
}
