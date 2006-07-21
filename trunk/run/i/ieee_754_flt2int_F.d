// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_flt2int_F;

int main(){
	size_t border;

	if(ulong.sizeof * 8 < real.dig * 3){
		border = ulong.sizeof * 8;
	}else{
		border = real.dig * 3;
	}

	for(size_t i = 0; i < border; i++){
		real a = 1.0;
		for(size_t j = i; j > 0; j--){
			a *= 2.0;
		}
		ulong b = cast(ulong) a;
		real c = a;

		if(c != a){
			assert(0);
		}
	}

	return 0;
}
