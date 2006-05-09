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
		assert(test(1)==2);
		assert(test(2)==3);
		assert(test(3)==4);
        	return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
