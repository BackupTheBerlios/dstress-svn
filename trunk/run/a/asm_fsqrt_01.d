// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsqrt_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();
		
		float a = 9.0f;
		
		asm{
			fld a;
			fsqrt;
			fstp a;
		}
		
		a -= 3.0f;
		if(a < 0.0f){
			a = -a;
		}
		
		if(a > a.epsilon * 4.0f){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "no inline asm support");
	static assert(0);
}
