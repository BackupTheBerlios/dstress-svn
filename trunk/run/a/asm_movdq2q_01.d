// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdq2q_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		haveSSE2!()();

		static double[2] A = [1.0, 2.0];
		double b = 3.0;
		
		asm{
			movupd XMM0, A;
			movdq2q MM0, XMM0;
			movq b, XMM0;
		}
		
		if(b != A[1]){
			return 0;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
