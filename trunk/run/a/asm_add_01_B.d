// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint i = 0x12_23_45_56u;
		ushort s = 0xFFFFu;
		
		assert(i==0x12_23_45_56u);
		assert(s==0xFFFFu);
		
		asm{
			mov EAX, 0x98_76_54_32;
			mov AX, s;
			add AX, 1;
			mov i, EAX;
		}
	
		assert(i==0x98_76_00_00u);
		assert(s==0xFFFFu);
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
