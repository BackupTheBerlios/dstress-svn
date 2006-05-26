 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_comiss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		const float[4] A = [0.0f, 1.0f, 3.0f, 5.0f];
		const float[4] B = [0.0f, 2.0f, 4.0f, 6.0f];

		asm{
			movups XMM0, A;
			movups XMM1, B;
			comiss XMM0, XMM1;
			jnz error;
			jp error;
			jc error;
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
