// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fstcw_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		ushort b;
		
		asm{
			finit;
			fstcw b;
		}
		
		if(b != 0x037F){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
