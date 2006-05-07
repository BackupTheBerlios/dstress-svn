// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsf_01_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		ushort a = 0x3000;
		
		asm{
			bsf AX, a;
			mov a, AX;
		}
		
		if(a!=12){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
