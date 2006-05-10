// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fld2e_01;

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
			fldl2e;
			fstp f;
		}
		
		f -= 0x1.71547652B82fE178p+0;
		
		if(f < 0.0){
			f = -f;
		}
		
		if(f > f.epsilon * 4.0){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "no inline asm support");
	static assert(0);
}
