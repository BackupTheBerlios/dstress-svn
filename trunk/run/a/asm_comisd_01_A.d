 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_comisd_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		const double[2] A = [1.0, 3.0];
		const double[2] B = [4.0, 3.0];

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			comisd XMM0, XMM1;
			jz error;
			jp error;
			jnc error;
		}
		

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
