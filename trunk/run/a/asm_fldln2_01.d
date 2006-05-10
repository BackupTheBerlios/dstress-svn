// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fldln2_01;

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
			fldln2;
			fstp f;
		}
		
		f -= 0.69314718055994530941723212145818;
		
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
