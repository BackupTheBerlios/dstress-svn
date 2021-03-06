// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.ieee_754_int2flt_E;

int main(){
	size_t border;

	if(ulong.sizeof * 8 < float.dig * 3){
		border = ulong.sizeof * 8;
	}else{
		border = float.dig * 3;
	}

	for(ulong i = 0; i < border; i++){
		ulong test = 1;
		test <<= i;
		float r = test;
		ulong result = cast(ulong)r;

		if(result != test){
			assert(0);
		}
	}

	return 0;
}
