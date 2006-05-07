// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_04_C;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
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
