// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_10;

int main(){
	real r;
	assert(real.min_10_exp <= -20);
	assert(real.min_10_exp <= float.min_10_exp);
	assert(real.min_10_exp == r.min_10_exp);
	return 0;
}
