// $HeadURL$
// $Date$
// $Author$

module dstress.run.t.template_20_B;

template T(double f){
	double cf = f;
}

int main(){
	const double a = 1.2;
	assert(T!(a).cf == a);

	const double b = -0.8;
	assert(T!(b).cf == b);

	return 0;
}
