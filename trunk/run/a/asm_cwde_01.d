// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cwde_01;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint i=0x12_3F_FF_FFu;
		short s=-128;
		
		assert(i==0x12_3F_FF_FFu);
		
		asm{
			mov EAX, i;
			mov AX, s;
			cwde;
			mov i, EAX;
		}
	
		if(i != 0xFF_FF_FF_80u){
			assert(0);
		}
		

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}

