// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_01_A;

int main(){
	version(D_InlineAsm_X86){
		uint i;
		ubyte x = 0xFF;
		
		asm{
			mov EAX, 0x23_43_56_78u;
			mov AL, 0xEE;
			mul x;
			mov i, EAX;
		}

		if(i != 0x23_43_ED_12){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
