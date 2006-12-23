// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerosdq_04;

// Check whether IEEE 754 signed zero is correctly supported.

union S{
	idouble f;
	uint[2] i;
}

int main(){
	S s;
	s.f=1.0i;
	int top = (s.i[0]==0) ? 1 : 0;


	s.f = 0.0i;
	if(s.i[top] != 0x00000000){
		assert(0);
	}

	s.f = -0.0i;
	if(s.i[top] != 0x80000000){
		assert(0);
	}

	s.f = 0.0i - 0.0i;
	if(s.i[top] != 0x00000000){
		assert(0);
	}

	s.f = (-0.0i) - 0.0i;
	if(s.i[top] != 0x80000000){
		assert(0);
	}

	s.f = 0.0i;
	s.f *= 1.0;
	if(s.i[top] != 0x00000000){
		assert(0);
	}

	s.f = 0.0i;
	s.f *= -1.0;
	if(s.i[top] != 0x80000000){
		assert(0);
	}

	return 0;
}
