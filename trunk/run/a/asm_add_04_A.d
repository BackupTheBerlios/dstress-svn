// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.add_04_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		int i = 0x12_34_FF_FF;
		asm{
			mov EAX, 2;
			add i, EAX;
		}

		if(i != 0x12_35_00_01){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
		static assert(0);
	}
}
