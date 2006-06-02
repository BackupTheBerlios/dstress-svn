 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_sal_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0x80_01_01_02;
		
		asm{
			mov EAX, a;
			mov CL, 1;
			sal EAX, CL;
			mov a, EAX;
		}
		
		if(a != 0x00_02_02_04){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
