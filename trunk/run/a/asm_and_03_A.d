 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_and_03_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 0x12_34_56_06;
		ushort b = 0x43_01;
		asm{
			mov EAX, a;
			and AX, b;
			mov a, EAX;
		}
		
		if(a != 0x12_34_42_00){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
