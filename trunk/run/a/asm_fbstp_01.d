// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fbstp_01;

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

		real r = 654321.0L;

		asm{
			fld r;
			fbstp raw;
		}

		if(raw[0] != (1 | (2 << 4))){
			assert(0);
		}
		if(raw[1] != (3 | (4 << 4))){
			assert(0);
		}
		if(raw[2] != (5 | (6 << 4))){
			assert(0);
		}
		if(raw[3] != 0){
			assert(0);
		}
		if(raw[4] != 0){
			assert(0);
		}
		if(raw[5] != 0){
			assert(0);
		}
		if(raw[6] != 0){
			assert(0);
		}
		if(raw[7] != 0){
			assert(0);
		}
		if(raw[8] != 0){
			assert(0);
		}
		if(raw[9] != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
