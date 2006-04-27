// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_not_02_B;

int main(){
	version(D_InlineAsm_X86){
		uint i;
		
		asm{
			mov EAX, 0x12_FE_34_DC;
			mov AX, 0b1100_1001_0110_1110;
			not AX;
			mov i, EAX;
		}
		
		if(i != (0x12_FE_00_00 | 0b0011_0110_1001_0001)){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
