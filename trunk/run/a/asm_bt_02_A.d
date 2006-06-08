 // $HeadURL$
 // $Date$
 // $Author$

module dstress.run.a.asm_bt_02_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 1;
		uint b = 0;

		asm{
			mov EAX, a;
			mov EBX, b;
			bt  EAX, EBX;
			jnc error;
			mov EBX, EAX;
			bt  EAX, EBX;
			jc error;
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
