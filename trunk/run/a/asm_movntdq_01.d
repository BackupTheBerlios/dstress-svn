// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntdq_01;

align(16) struct X{
	ulong[2] c;
}

int main(){
	version(D_InlineAsm){
		
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
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}