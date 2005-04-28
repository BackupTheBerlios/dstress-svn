// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerosdq_02;

// Check whether IEEE 754 signed zero is correctly supported.

union S{
	double f;
	uint[2] i;
}

int main(){
	S s;
	s.f=1.0;
	int top = (s.i[0]==0) ? 1 : 0;


	s.f = 0.0;
	assert(s.i[top]==0x00000000);

	s.f = -0.0;
	assert(s.i[top]==0x80000000);

	s.f = 0.0 - 0.0;
	assert(s.i[top]==0x00000000);

	s.f = (-0.0) - 0.0;
	assert(s.i[top]==0x80000000);

	s.f = 0.0;
	s.f *= 1.0;
	assert(s.i[top]==0x00000000);

	s.f = 0.0;
	s.f *= -1.0;
	assert(s.i[top]==0x80000000);

	return 0;
}
