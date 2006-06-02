// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_call_01;
version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint a = 0xAB_34_56_78;
		
		asm{
			mov EAX, a;
			call dummy;
			jmp dummy_end;
		dummy:
			inc EAX;
			ret;
		dummy_end:
			inc EAX;
			mov a, EAX;
		}
		
		if(a != 0xAB_34_56_7A){
			assert(0);
		}
		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
