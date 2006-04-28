// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpiss_01_A;

int main(){
	version(D_InlineAsm_X86){
		static float[4] A = [1.0f, 2.0f, 3.0f, -8.0f];
		static float[4] B = [0.0f, 4.0f, 3.0f, -4.0f];
		uint i;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			comiss XMM0, XMM1;
			mov EAX, 0;
			jc done_1;
			jz done_1;
			jp done_1;
			inc EAX;
		done_1:
			mov i, EAX;
		}

		if(i != 1){
			assert(0);
		}

		asm{
			movdqu XMM0, B;
			movdqu XMM1, A;
			comiss XMM0, XMM1;
			mov EAX, 0;
			jnc done_2;
			jz done_2;
			jp done_2;
			inc EAX;
		done_2:
			mov i, EAX;
		}

		if(i != 1){
			assert(0);
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
