// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpsd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 2.0];
		static double[2] B = [1.0, 2.0];
		ulong[2] c;
		double[2] d;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			cmpsd XMM0, XMM1, 0;
			movdqu c, XMM0;
			movdqu d, XMM0;
		}

		if(c[0] != ulong.max){
			assert(0);
		}
		if(d[1] != A[1]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
