// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_03;

int main(){
	double d;

	assert(double.alignof >= 8);
	assert(d.alignof == double.alignof);
	assert((4.2).alignof == double.alignof);

	return 0;
}
