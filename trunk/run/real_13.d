// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_13;

int main(){
	real r;
	assert(real.min < 0.00001);
	assert(real.min > 0);
	assert(real.min <= float.min);
	assert(real.min == r.min);
	return 0;
}
