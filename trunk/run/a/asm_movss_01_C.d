// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movss_01_C;

int main(){
	version(D_InlineAsm_X86){
		const float[4] A = [1.0, 2.0, 3.0, 4.0];
		float b;
		
		asm{
			movdqu XMM0, A;
			movss b, XMM0;
		}
		
		if(b != A[0]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
