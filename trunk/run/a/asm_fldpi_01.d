// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldpi_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		double f = -800.9;
		
		asm{
			fldpi;
			fstp f;
		}
		
		f -= 0x1.921FB54442D1846Ap+1;
		
		if(f < 0.0){
			f = -f;
		}
		
		if(f > f.epsilon * 4.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
