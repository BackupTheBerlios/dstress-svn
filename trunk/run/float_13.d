// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_13;

int main(){
	float f;
	assert(float.min < 0.0000001);
	assert(float.min > double.min);
	assert(float.min == f.min);
	assert(float.min == (4.2f).min);
	return 0;
}
