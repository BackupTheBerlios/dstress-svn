// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_not_02_A;

int main(){
	version(D_InlineAsm_X86){
		uint i;
		
		asm{
			mov EAX, 0x12_FE_34_DC;
			mov AL, 0b0110_1110;
			not AL;
			mov i, EAX;
		}
		
		if(i != (0x12_FE_34_00 | 0b1001_0001)){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
