// $HeadURL$
// $Date$
// $Author$

module dstress.run.float_03;

int main(){
	float f;

	assert(float.alignof >= 4);
	assert(float.alignof <= double.alignof);
	assert(float.alignof >= float.sizeof);
	assert(float.alignof == f.alignof);
	assert(float.alignof == (4.2f).alignof);

	return 0;
}
