// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_dec_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ubyte i = 0;

		asm{
			dec i;
		}

		if(i != 0xFF){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
