// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setz_01;

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
			mov EAX, 3;
			cmp EAX, 4;
			setz a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 4;
			cmp EAX, 3;
			setz a;
		}

		assert(a == 0);

		a = a.max;

		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setz a;
		}

		assert(a == 1);

		return 0;
	}
}
