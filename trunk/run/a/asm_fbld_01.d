// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fbld_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveFPU!()();

		byte[10] raw;

		raw[0] = 1 | (2 << 4);
		raw[1] = 3 | (4 << 4);
		raw[2] = 5 | (6 << 4);
		raw[3] = 0;
		raw[4] = 0;
		raw[5] = 0;
		raw[6] = 0;
		raw[7] = 0;
		raw[8] = 0;
		raw[9] = 0;

		real r = 17.0L;

		asm{
			fbld raw;
			fstp r;
		}

		r -= 654321.0L;

		r = (r < 0.0L) ? (-r) : r;

		if(r > r.epsilon * 4.0L){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
