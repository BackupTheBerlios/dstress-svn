 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_bt_02_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint a = 1;
		uint b = 0;

		asm{
			mov EBX, b;
			bt  a, EBX;
			jnc error;
			mov EBX, a;
			bt  a, EBX;
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
