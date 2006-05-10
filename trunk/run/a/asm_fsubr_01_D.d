// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_fsubr_01_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}


version(runTest){
	import addon.cpuinfo;

	int main(){
		float a = 2.4f;
		float b = -1.2f;
		
		asm{
			fld a;
			fld b;
			fsubr ST(1), ST;
			fdecstp;
			fst a;
		}
		
		a -= 3.6f;
		
		if(a < 0.0f){
			a = -a;
		}
		
		if(a > a.epsilon * 4.0f){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
