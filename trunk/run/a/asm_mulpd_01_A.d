// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mulpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		const double[2] A = [7.0, 4.0];
		const double[2] B = [3.0, 2.0];
		double[2] c;
		
		asm{
			movdqu XMM0, A;
			mulpd XMM0, B;
			movdqu c, XMM0;
		}
		
		if(c[0] != 21.0){
			assert(0);
		}
		if(c[1] != 8.0){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
