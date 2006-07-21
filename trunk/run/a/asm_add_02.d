 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_add_02;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int test(int i){
		asm{
			naked;
			add	EAX, 1;
			ret;
		}
	}

	int main(){
		if(test(1) != 2){
			assert(0);
		}

		if(test(2) != 3){
			assert(0);
		}

		if(test(3) != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
