// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_04_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ubyte i = 0xFF;
		asm{
			mov AL, 2;
			add i, AL;
		}

		if(i != 0x01){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
