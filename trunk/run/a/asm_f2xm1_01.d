// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_f2xm1_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		float f = -1.0f;

		asm{
			fld f;
			f2xm1;
			fst f;
		}

		if(f >= 0.0f){
			assert(0);
		}

		f += 0.5f;

		f = (f > 0.0f) ? f : -f;

		if(f > f.epsilon * 4.0f){
			assert(0);
		}

		f = 1.0f;

		asm{
			fld f;
			f2xm1;
			fst f;
		}

		if(f < 0.0f){
			assert(0);
		}

		f -= 1.0f;

		f = (f > 0.0f) ? f : -f;

		if(f > f.epsilon * 4.0f){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
