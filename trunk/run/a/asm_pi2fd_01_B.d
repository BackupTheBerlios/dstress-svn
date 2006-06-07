// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pi2fd_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();
		
		const int[2] A = [6, 2];
		float[2] b;

		asm{
			pi2fd MM0, A;
			movq b, MM0;
			emms;
		}

		if(b[0] != 6.0f){
			assert(0);
		}

		if(b[1] != 2.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
