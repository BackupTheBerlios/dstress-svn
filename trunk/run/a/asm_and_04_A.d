 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_and_04_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint a = 0x12_34_56_06;
		ubyte b = 0x05;
		asm{
			mov EAX, a;
			mov BL, b;
			and AL, BL;
			mov a, EAX;
		}
		
		if(a != 0x12_34_56_04){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
