// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_flt2int_E;

int main(){
	size_t border;

	if(ulong.sizeof * 8 < double.dig * 3){
		border = ulong.sizeof * 8;
	}else{
		border = double.dig * 3;
	}

	for(size_t i = 0; i < border; i++){
		double a = 1.0;
		for(size_t j = i; j > 0; j--){
			a *= 2.0;
		}
		ulong b = cast(ulong) a;
		double c = a;

		if(c != a){
			assert(0);
		}
	}

	return 0;
}
