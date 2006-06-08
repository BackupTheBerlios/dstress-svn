// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_clflush_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a;
		ubyte b = 1;

		asm{
			mov EAX, 1;
			cpuid;
			mov EAX, EDX;
			mov EBX, 0x2000;
			and EAX, EBX;
			cmp EAX, EBX;
			jne not_supported;
			clflush b;
			inc EAX;
		not_supported:
			mov a, 1;
		}

		if((a != 0x20001) && (a != 1)){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
