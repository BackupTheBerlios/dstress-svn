// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_13;

int main(){
	double d;
	assert(double.min < 0.0000001);
	assert(double.min == d.min);
	assert(double.min == (4.2).min);
	return 0;
}
