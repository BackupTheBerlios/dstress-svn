// $HeadURL$
// $Date$
// $Author$

module dstress.run.real_06;

int main(){
	real r;
	assert(real.epsilon > 0);
	assert(real.epsilon < 0.00001 );
	assert(real.epsilon == r.epsilon);
	return 0;
}
