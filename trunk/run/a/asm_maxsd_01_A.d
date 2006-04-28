// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_maxsd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 3.0];
		static double[2] B = [2.0, 4.0];
		double[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			maxsd XMM0, XMM1;
			movdqu c, XMM0;
		}

		if(c[0] != 2.0){
			assert(0);
		}

		if(c[1] != 3.0){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
