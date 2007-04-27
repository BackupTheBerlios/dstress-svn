 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_fcmove_01_A;

// __DSTRESS_TORTURE_BLOCK__ -fPIC

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

		float f = -9.9f;

		asm{
			mov AL, 2;
			mov BL, 1;
			cmp AL, BL;
			fld1;
			fldz;
			fcmove ST(0), ST(1);
			fst f;
		}

		if(f != 0.0f){
			assert(0);
		}

		asm{
			mov AL, 1;
			mov BL, 1;
			cmp AL, BL;
			fld1;
			fldz;
			fcmove ST(0), ST(1);
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
