// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setp_01;

version(D_InlineAsm_X86){
	version = test;
}else version(D_Inline_Asm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
}

version(test){
	int main(){
		ubyte a;

		a = a.max;

		asm{
			mov EAX, 0;
			inc EAX;
			setp a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 1;
			inc EAX;
			setp a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 2;
			inc EAX;
			setp a;
		}

		assert(a == 1);

		a = a.max;

		asm{
			mov EAX, 3;
			inc EAX;
			setp a;
		}

		assert(a == 0);

		return 0;
	}
}
