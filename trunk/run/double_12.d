// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_12;

int main(){
	double d;
	assert(double.max > 0xFFFFFFF);
	assert(double.max < double.infinity);
	assert(d.max == double.max);
	assert((4.2).max == double.max);
	return 0;
}
