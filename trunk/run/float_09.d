// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_09;

int main(){
	float f;
	assert(float.max_exp > float.max_10_exp);
	assert(float.max_exp < double.max_exp);
	assert(float.max_exp == f.max_exp);
	assert(float.max_exp == (2.4f).max_exp);
	return 0;
}
