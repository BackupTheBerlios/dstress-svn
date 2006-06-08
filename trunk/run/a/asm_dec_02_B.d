// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ushort i = 0;

		asm{
			dec i;
		}

		if(i != 0xFF_FF){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
