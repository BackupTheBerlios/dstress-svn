// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fchs_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		real a = -1.2L;

		asm{
			fld a;
			fchs;
			fstp a;
		}

		if(1.2L != a){
			assert(0);

		}

		asm{
			fld a;
			fchs;
			fstp a;
		}

		if(-1.2L != a){
			assert(0);

		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
