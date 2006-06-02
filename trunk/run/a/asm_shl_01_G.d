 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_shl_01_G;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0xFF_FF_01_02;
		
		asm{
			mov EAX, a;
			shl AL, 2;
			mov a, EAX;
		}
		
		if(a != 0xFF_FF_01_08){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
