// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerosdq_01;

// Check whether IEEE 754 signed zero is correctly supported.

union S{
	float f;
	uint[1] i;
}

int main(){
	S s;
	int top=0;


	s.f = 0.0f;
	assert(s.i[top]==0x00000000);

	s.f = -0.0f;
	assert(s.i[top]==0x80000000);

	s.f = 0.0f - 0.0f;
	assert(s.i[top]==0x00000000);

	s.f = (-0.0f) - 0.0f;
	assert(s.i[top]==0x80000000);

	s.f = 0.0f;
	s.f *= 1.0f;
	assert(s.i[top]==0x00000000);

	s.f = 0.0f;
	s.f *= -1.0f;
	assert(s.i[top]==0x80000000);

	return 0;
}
