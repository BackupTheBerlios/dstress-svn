// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmppd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 2.0f];
		static double[2] B = [1.1, 2.0f];
		ulong[2] c;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			cmppd XMM0, XMM1, 0;
			movdqu c, XMM0;
		}

		if(c[0]){
			assert(0);
		}
		if(c[1] != ulong.max){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
