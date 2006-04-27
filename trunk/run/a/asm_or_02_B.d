// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_02_B;

int main(){
	version(D_InlineAsm_X86){
		uint a;
		
		asm{
			mov EAX, 0x45_FD_BC_67;
			mov AX, 0b0000_1111_0100_0001;
			or AX,  0b1010_0001_0001_1000;
			mov a, EAX;
		}
		
		if(a != (0x45_FD_00_00 | 0b1010_1111_0101_1001)){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
