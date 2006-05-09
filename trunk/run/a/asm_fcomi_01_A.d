// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fcomi_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float f1, f2;
		
		ubyte CF = 2;
		ubyte PF = 2;
		ubyte ZF = 2;
				
		asm{
			fldz;
			fldz;
			fld1;
			fldz;
			fcomi;
			fstp f1;
			fstp f2;
			setc CF;
			setp PF;
			setz ZF;
		}

		if(f1 != 0.0f){
			assert(0);
		}
		if(f2 != 1.0f){
			assert(0);
		}
		
		if(CF != 1){
			assert(0);
		}
		if(PF != 0){
			assert(0);
		}
		if(ZF != 0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
