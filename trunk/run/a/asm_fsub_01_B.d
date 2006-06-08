// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsub_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}


version(runTest){
	import addon.cpuinfo;

	int main(){
		double a = 2.4;
		double b = -1.2;

		asm{
			fld a;
			fsub b;
			fst a;
		}

		a -= 3.6;

		if(a < 0.0){
			a = -a;
		}

		if(a > a.epsilon * 4.0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
