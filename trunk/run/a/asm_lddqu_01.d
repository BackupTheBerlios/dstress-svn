// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lddqu_01;

align(1) struct X{
	ubyte a;
	ulong b;
}

align(16) struct Y{
	ulong c;
}
		
int main(){
	version(D_InlineAsm){	
		X* x = new X;
	
		assert(cast(size_t)&(x.b) % 2 == 1);
		
		x.b = 0x0123_4567_89AB_CDEF_LU;
		
		Y* y = new Y;
		
		assert(cast(size_t)&(y.c) % 16 == 0);
		
		asm{
			mov EAX, x;
			lddqu XMM0, X.b[EAX];
			mov EAX, y;
			movdqa Y.c[EAX], XMM0;
		}
		
		assert(y.c==0x0123_4567_89AB_CDEF_LU);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}