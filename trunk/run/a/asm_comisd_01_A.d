 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_comisd_01_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		const double[2] A = [1.0, 2.0];
		const double[2] B = [1.0, 3.0];

		asm{
			movupd XMM0, A;
			movupd XMM1, B;
			comisd XMM0, XMM1;
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
