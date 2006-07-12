// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpiss_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		float[] a = new float[4];
		a[0] = 1.0f;
		a[1] = 2.0f;
		a[2] = 3.0f;
		a[3] = -8.0f;
		
		float[] b = new float[4];
		b[0] = 0.0f;
		b[1] = 4.0f;
		b[2] = 3.0f;
		b[3] = -4.0f;

		uint i;

		asm{
			movdqu XMM0, a;
			movdqu XMM1, b;
			comiss XMM0, XMM1;
			emms;
			mov EAX, 0;
			jnc done_1;
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
			movdqu XMM0, b;
			movdqu XMM1, a;
			comiss XMM0, XMM1;
			emms;
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
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
