// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_07;

int main(){
	float f;
	assert(float.mant_dig >= 8);
	assert(float.mant_dig < double.mant_dig);
	assert(float.mant_dig == f.mant_dig);
	assert(float.mant_dig == (2.4f).mant_dig);
	return 0;
}
