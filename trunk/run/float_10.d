// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_10;

int main(){
	float f;
	assert(float.min_10_exp <= -20);
	assert(float.min_10_exp > double.min_10_exp);
	assert(float.min_10_exp == f.min_10_exp);
	assert(float.min_10_exp == (2.4f).min_10_exp);
	return 0;
}
