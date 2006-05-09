// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint i = 0x01_01_01_00u;
		
		asm{
			mov EAX, i;
			dec AL;
			mov i, EAX;
		}
	
		if(i != 0x01_01_01_FFu){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
