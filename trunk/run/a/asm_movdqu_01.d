// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdqu_01;

align(3) struct X{
	byte dummy;
	ulong[2] c;
}

int main(){
	version(D_InlineAsm){
		X* a = new X;
		a.c[0]=1;
		a.c[1]=2;
		X* b = new X;

		assert(a.c[0]!=b.c[0]);
		assert(a.c[1]!=b.c[1]);

		asm{
			mov EAX, a;
			mov EBX, b;
			movdqu XMM0, X.c[EAX];
			movdqu X.c[EBX], XMM0;
		}

		assert(a.c[0]==b.c[0]);
		assert(a.c[1]==b.c[1]);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}