// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_int2flt_A;

int main(){
	size_t border;
	
	if((int.sizeof * 8) - 1 < real.dig * 3){
		border = (int.sizeof * 8) - 1;
	}else{
		border = real.dig * 3;
	}

	for(int i = 0; i < border; i++){
		int test = 1;
		test <<= i;
		real r = test;
		int result = cast(int)r;

		if(result != test){
			assert(0);
		}
	}

	for(int i = 0; i < border; i++){
		int test = 1 << i;
		test *= -1;
		real r = test;
		int result = cast(int)r;

		if(result != test){
			assert(0);
		}
	}

	return 0;
}
