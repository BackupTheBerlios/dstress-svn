// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_12;

int main(){
	float f;
	assert(float.max > 0xFFFFFFF);
	assert(float.max < double.max);
	assert(float.max < float.infinity);
	assert(float.max == f.max);
	assert(float.max == (2.4f).max);
	return 0;
}
