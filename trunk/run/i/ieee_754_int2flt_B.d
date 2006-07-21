// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_int2flt_B;

int main(){
	size_t border;

	if((long.sizeof * 8) - 1 < real.dig * 3){
		border = (long.sizeof * 8) - 1;
	}else{
		border = real.dig * 3;
	}

	for(long i = 0; i < border; i++){
		long test = 1;
		test <<= i;
		real r = test;
		long result = cast(long)r;

		if(result != test){
			assert(0);
		}
	}

	for(long i = 0; i < border; i++){
		long test = 1 << i;
		test *= -1;
		real r = test;
		long result = cast(long)r;

		if(result != test){
			assert(0);
		}
	}

	return 0;
}
