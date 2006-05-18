// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsx_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 0xFF_FF_FF_FFu;
		short b = short.min;
		
		asm{
			mov EAX, i;
			mov AX, b;
			movsx EAX, AX;
			mov i, EAX;
		}
	
		if(i != short.min){
			assert(0);
		}
		
		i = 0xFF_FF_FF_FFu;
		b = short.max;
		
		asm{
			mov EAX, i;
			mov AX, b;
			movsx EAX, AX;
			mov i, EAX;
		}
		
		if(i != short.max){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
