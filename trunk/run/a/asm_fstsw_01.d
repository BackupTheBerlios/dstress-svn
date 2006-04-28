// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fstsw_01;

int main(){
	version(D_InlineAsm_X86){
		short a;
		int b;

		asm{
			mov EAX, 0x1234_ABCD;
			fstsw a;
			fstsw AX;
			mov b, EAX;
		}

		if((b & 0xFFFF_0000) != 0x1234_0000){
			assert(0);
		}

		if(a != (b & 0xFFFF)){
			assert(0);
		}

		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
