// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpisd_01_A;

int main(){
	version(D_InlineAsm_X86){
		static double[2] A = [1.0, 2.0];
		static double[2] B = [0.0, 1.0];
		uint i;

		asm{
			movdqu XMM0, A;
			movdqu XMM1, B;
			comisd XMM0, XMM1;
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
			comisd XMM0, XMM1;
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
