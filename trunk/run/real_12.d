// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_12;

int main(){
	real r;
	assert(real.max > 0xFFFFFFF);
	assert(real.max > float.max);
	assert(real.max < real.infinity);
	assert(real.max == r.max);
	return 0;
}
