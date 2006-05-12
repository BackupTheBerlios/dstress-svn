// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_idiv_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		byte y = 2;
		
		ushort a = 0x00_81;
		
		asm{
			mov AX, a;
			mov CL, y;
			idiv CL;
			mov a, AX;
		}
		if(a != 0x0140){
			assert(0);
		}
		
		a = 0x00_80;

		asm{
			mov AX, a;
			mov CL, y;
			idiv CL;
			mov a, AX;
		}
		
		if(a != 0x0040){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
