// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fincstp_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		ushort a, b;
		
		asm{
			finit;
			fstsw a;
			fincstp;
			fstsw b;
		}
		
		a = (a >> 11) & 0b111;
		b = (b >> 11) & 0b111;
		
		if(a != 0){
			assert(0);
		}
		if(b != 1){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
