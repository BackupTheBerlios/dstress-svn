// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_02_A;

int main(){
	version(D_InlineAsm_X86){
		uint a;
		
		asm{
			mov EAX, 0x45_FD_BC_67;
			mov AL, 0b0100_0001;
			or AL, 0b0001_1000;
			mov a, EAX;
		}
		
		if(a != (0x45_FD_BC_00 | 0b0101_1001)){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
