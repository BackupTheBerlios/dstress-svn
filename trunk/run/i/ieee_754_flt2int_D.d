// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_flt2int_D;

int main(){
	size_t border;
	
	if(ulong.sizeof * 8 < float.dig * 3){
		border = ulong.sizeof * 8;
	}else{
		border = float.dig * 3;
	}

	for(size_t i = 0; i < border; i++){
		float a = 1.0;
		for(size_t j = i; j > 0; j--){
			a *= 2.0;
		}
		ulong b = cast(ulong) a;
		float c = a;

		if(c != a){
			assert(0);
		}
	}

	return 0;
}
