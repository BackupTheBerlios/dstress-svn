// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_04;

int main(){
	double d;
	assert(double.infinity > double.max);
	assert(d.infinity == double.infinity);
	assert((4.2).infinity == double.infinity);
	return 0;
}
