// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerosdq_03;

// Check whether IEEE 754 signed zero is correctly supported.

union S{
	ifloat f;
	uint[1] i;
}

int main(){
	S s;
	int top=0;


	s.f = 0.0fi;
	assert(s.i[top]==0x00000000);

	s.f = -0.0fi;
	assert(s.i[top]==0x80000000);

	s.f = 0.0fi - 0.0fi;
	assert(s.i[top]==0x00000000);

	s.f = (-0.0fi) - 0.0fi;
	assert(s.i[top]==0x80000000);

	s.f = 0.0fi;
	s.f *= 1.0fi;
	assert(s.i[top]==0x00000000);

	s.f = 0.0fi;
	s.f *= -1.0fi;
	assert(s.i[top]==0x80000000);

	return 0;
}
