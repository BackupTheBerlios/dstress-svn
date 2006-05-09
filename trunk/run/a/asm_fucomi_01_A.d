// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fucomi_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float f1 = float.nan;
		float f2;
		
		ubyte CF = 2;
		ubyte PF = 2;
		ubyte ZF = 2;
				
		asm{
			fldz;
			fldz;
			fld1;
			fld f1;
			fucomi;
			fstp f1;
			fstp f1;
			fstp f2;
			setc CF;
			setp PF;
			setz ZF;
		}

		if(f1 != 1.0f){
			assert(0);
		}
		if(f2 != 0.0f){
			assert(0);
		}
		
		if(CF != 1){
			assert(0);
		}
		if(PF != 1){
			assert(0);
		}
		if(ZF != 1){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
