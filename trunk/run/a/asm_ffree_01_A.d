 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_ffree_01_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

version(doTest){
	import addon.cpuinfo;
	
	int main(){
		haveFPU!()();

		asm{
			finit;
			ffree ST(1);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
