// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsf_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint a = 0x30000;
		
		asm{
			mov EBX, a;
			bsf EAX, EBX;
			mov a, EAX;
		}
		
		if(a != 16){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
