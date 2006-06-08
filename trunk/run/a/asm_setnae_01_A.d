// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setnae_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a;

		a = 0xFF;

		asm{
			mov EAX, 3;
			cmp EAX, 4;
			setnae a;
		}

		if(a != 1){
			assert(0);
		}

		a = 0xFF;

		asm{
			mov EAX, 4;
			cmp EAX, 3;
			setnae a;
		}

		if(a != 0){
			assert(0);
		}

		a = 0xFF;

		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setnae a;
		}

		if(a != 0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
