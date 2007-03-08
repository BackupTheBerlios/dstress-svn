// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntdq_01;

version(D_InlineAsm_X86){
	version = test;
}else version(D_Inline_Asm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
}

version(test){
	align(16) struct X{
		ulong[2] c;
	}

	int main(){
		double d = -3.5;

		X* x = new X;

		asm{
			mov EAX, x;
			movddup XMM0, d;
			movntdq X.c[EAX], XMM0;
		}

		assert(x.c[0]==x.c[1]);

		assert(*(cast(double*)cast(void*)&x.c[0]) == d);

		return 0;
	}
}
