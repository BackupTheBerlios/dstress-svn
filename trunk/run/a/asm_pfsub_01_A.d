// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfsub_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();
		
		const float[2] A = [6.0f, 2.0f];
		const float[2] B = [2.0f, -1.0f];
		float[2] c;

		asm{
			movq MM0, A;
			movq MM1, B;
			pfsub MM0, MM1;
			movq c, MM0;
			emms;
		}

		if(c[0] != 4.0f){
			assert(0);
		}

		if(c[1] != 3.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
