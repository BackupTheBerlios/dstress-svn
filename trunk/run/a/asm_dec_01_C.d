// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint i = 0x00_00_00_00u;
		
		asm{
			mov EAX, i;
			dec EAX;
			mov i, EAX;
		}
	
		if(i != 0xFF_FF_FF_FF){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
