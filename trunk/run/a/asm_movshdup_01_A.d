// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movshdup_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;
	
	int main(){
		const float[4] a = [1.0f, -1.0f, -2.0f, 2.0f];
		float[4] b;
		
		asm{
			movups XMM0, a;
			movshdup XMM1, XMM0;
			movups b, XMM1;
		}
		
		if(a[1] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}
		if(a[3] != b[2]){
			assert(0);
		}
		if(a[3] != b[3]){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
