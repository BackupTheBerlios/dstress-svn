// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_flt2int_B;

int main(){
	size_t border;
	
	if((long.sizeof * 8) - 1 < double.dig * 3){
		border = (long.sizeof * 8) - 1;
	}else{
		border = double.dig * 3;
	}

	for(size_t i = 0; i < border; i++){
		double a = 1.0;
		for(size_t j = i; j > 0; j--){
			a *= 2.0;
		}
		long b = cast(long) a;
		double c = a;

		if(c != a){
			assert(0);
		}
	}

	for(size_t i = 0; i < border; i++){
		double a = -1.0;
		for(size_t j = i; j > 0; j--){
			a *= 2.0;
		}
		long b = cast(long) a;
		double c = a;

		if(c != a){
			assert(0);
		}
	}

	return 0;
}
