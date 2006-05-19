// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movzx_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i = 0xFF_FF_FF_FFu;
		ubyte b = 0xFF;
		
		asm{
			mov EAX, i;
			movzx AX, b;
			mov i, EAX;
		}
	
		if(i != 0xFF_FF_00_FFu){
			assert(0);
		}
		if(b != 0xFF){
			assert(0);
		}
		
		i=0xFF_FF_FF_FFu;
		b=0x12;
		
		asm{
			mov EAX, i;
			movzx AX, b;
			mov i, EAX;
		}
		
		if(i != 0xFF_FF_00_12u){
			assert(0);
		}
		if(b != 0x12){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
