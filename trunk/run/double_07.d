// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_07;

int main(){
	double d;
	assert(double.mant_dig>=8);
	assert(d.mant_dig==double.mant_dig);
	assert((2.3).mant_dig==double.mant_dig);
	return 0;
}
