// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pinsrw_01_A;

int main(){
	version(D_InlineAsm_X86){
		ulong x = 0x0500_FFFF_0707_1234;
		ulong y;
		uint a = 0x1234_5678;
		
		asm{
			movq MM0, x;
			mov EAX, a;
			pinsrw MM0, EAX, 0;
			movq y, MM0;
		}

		if(y != 0x0500_FFFF_0707_5678){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
