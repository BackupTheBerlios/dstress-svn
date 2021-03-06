// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_int2flt_G;

int main(){
	size_t border;

	if((ulong.sizeof * 8) < real.dig * 3){
		border = ulong.sizeof * 8;
	}else{
		border = real.dig * 3;
	}

	for(ulong i = 0; i < border; i++){
		ulong test = 1;
		test <<= i;
		real r = test;
		ulong result = cast(ulong)r;

		if(result != test){
			assert(0);
		}
	}

	return 0;
}
