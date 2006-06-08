 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_fcmovnu_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		haveCMOV!()();

		float f = float.nan;

		asm{
			fld1;
			fld f;
			fucomip;
			fldz;
			fcmovnu ST(1);
			fst f;
		}

		if(f != 0.0f){
			assert(0);
		}

		asm{
			fld1;
			fld1;
			fucomip;
			fldz;
			fcmovnu ST(1);
			fst f;
		}

		if(f != 1.0f){
			assert(0);
		}


		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
