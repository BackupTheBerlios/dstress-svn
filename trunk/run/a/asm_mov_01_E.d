 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_mov_01_E;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0xFE;

		asm{
			mov a, 0x12;
		}

		if(a != 0x12){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
