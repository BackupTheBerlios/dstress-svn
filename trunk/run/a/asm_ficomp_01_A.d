// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ficomp_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float f = 3.0f;
		short i = -3;

		ushort s;

		asm{
			fld1;
			fld f;
			ficomp i;
			fstsw s;
			fstp f;
		}

		if(f != 1.0f){
			assert(0);
		}

		ushort C0 = 1 << 8;
		ushort C2 = 1 << 10;
		ushort C3 = 1 << 14;

		if(s & C0){
			assert(0);
		}
		if(s & C2){
			assert(0);
		}
		if(s & C3){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
