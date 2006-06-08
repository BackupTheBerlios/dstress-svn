// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_A;

int main(){
	version(D_InlineAsm_X86){
		uint i = 0x12_23_45_56;
		ubyte b = 0xFFu;

		assert(i==0x12_23_45_56);
		assert(b==0xFFu);

		asm{
			mov EAX, 0x98_76_54_32;
			mov AH, b;
			add AH, 1;
			mov i, EAX;
		}

		assert(i==0x98_76_00_32);
		assert(b==0xFFu);

		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
