// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ushort i;
		
		asm{
			lea AX, i;
			mov i, AX;
		}
		
		if(cast(ushort)&i != i){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
