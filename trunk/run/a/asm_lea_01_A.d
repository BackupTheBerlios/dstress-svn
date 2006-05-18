// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a;
		uint b;
		
		asm{
			lea EAX, a;
			mov b, EAX;
		}
		
		if(b != cast(int)&a){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
