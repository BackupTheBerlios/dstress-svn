// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsr_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort a = 0x3000;
		
		asm{
			mov BX, a;
			bsr AX, BX;
			mov a, AX;
		}
		
		if(a != 13){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
