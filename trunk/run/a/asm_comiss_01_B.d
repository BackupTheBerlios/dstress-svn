 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_comiss_01_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		const float[4] A = [10.0f, 20.0f, 19.0f, 2.0f];
		const float B = 3.0f;

		asm{
			movups XMM0, A;
			comiss XMM0, B;
			jg error;
			je error;
			jnl error;
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
