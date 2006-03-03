// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_int2flt_C;

int main(){
	size_t border;
	
	if((long.sizeof * 8) - 1 < double.dig * 3){
		border = (long.sizeof * 8) - 1;
	}else{
		border = double.dig * 3;
	}

	for(long i = 0; i < border; i++){
		long test = 1 << i;
		double r = test;
		long result = cast(long)r;

		if(result != test){
			assert(0);
		}
	}

	for(long i = 0; i < border; i++){
		long test = 1 << i;
		test *= -1;
		double r = test;
		long result = cast(long)r;

		if(result != test){
			assert(0);
		}
	}

	return 0;
}
