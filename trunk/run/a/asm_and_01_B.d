 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_and_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint a = 0x12_34_56_06;
		ushort b = 5;
		asm{
			mov EAX, a;
			and AX, b;
			mov a, EAX;
		}
		
		if(a != 0x12_34_00_04){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
