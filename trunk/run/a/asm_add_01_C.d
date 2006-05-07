// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_C;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint i = 0x12_23_45_56u;
		uint s = 0xFF_FF_FF_FFu;
		
		assert(i==0x12_23_45_56u);
		assert(s==0xFF_FF_FF_FFu);
		
		asm{
			mov EAX, s;
			add EAX, 1;
			mov i, EAX;
		}
	
		assert(i==0u);
		assert(s==0xFF_FF_FF_FFu);
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
