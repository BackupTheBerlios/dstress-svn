// $HeadURL$
// $Date$
// $Author$

module dstress.run.double_06;

int main(){
	double d;
	assert(double.epsilon > 0);
	assert(double.epsilon < ( 1% (10 ^(double.dig) ) ) );
	assert(d.epsilon == double.epsilon);
	assert((4.2).epsilon == double.epsilon);
	return 0;
}
