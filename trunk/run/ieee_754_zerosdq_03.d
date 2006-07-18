// $HeadURL$
// $Date$
// $Author$

module dstress.run.ieee_754_zerosdq_03;

// Check whether IEEE 754 signed zero is correctly supported.

union S{
	ifloat f;
	uint i;
}

int main(){
	S s;

	s.f = 0.0fi;
	if(s.i != 0x00000000){
		assert(0);
	}

	s.f = -0.0fi;
	if(s.i != 0x80000000){
		assert(0);
	}

	s.f = 0.0fi - 0.0fi;
	if(s.i != 0x00000000){
		assert(0);
	}

	s.f = (-0.0fi) - 0.0fi;
	if(s.i != 0x80000000){
		assert(0);
	}

	s.f = 0.0fi;
	s.f *= 1.0fi;
	if(s.i != 0x00000000){
		assert(0);
	}

	s.f = 0.0fi;
	s.f *= -1.0fi;
	if(s.i != 0x80000000){
		assert(0);
	}

	return 0;
}
