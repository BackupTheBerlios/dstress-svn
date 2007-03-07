 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_rdtsc_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a1, a2;
		uint b1, b2;

		asm{
			rdtsc;
			mov a1, EDX;
			mov a2, EAX;
			rdtsc;
			mov b1, EDX;
			mov b2, EAX;
		}

		ulong a = a1;
		a <<= 32;
		a |= a2;

		ulong b = b1;
		b <<= 32;
		b |= b2;

		assert(a != b);

		if(a < a.max >> 2){
			assert(a < b);
		}else{
			// potential overflow
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
