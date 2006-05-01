// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movups_01_C;

int main(){
	version(D_InlineAsm_X86){
		const float[4] A = [1.0, 2.0, 3.0, 4.0];
		float[4] b;
		
		asm{
			movups XMM0, A;
			movdqu b, XMM0;
		}
		
		if(b[0] != A[0]){
			assert(0);
		}
		if(b[1] != A[1]){
			assert(0);
		}
		if(b[2] != A[2]){
			assert(0);
		}
		if(b[3] != A[3]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
