 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_btc_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a = 3;
		uint b = 0;

		asm{
			mov EAX, a;
			mov EBX, b;
			btc EAX, EBX;
			jnc error;
			btc EAX, EBX;
			jc error;
			btc EAX, EBX;
			jnc error;
			mov a, EAX;
		}
		
		if(a != 2){
			assert(0);
		}

		return 0;
	error:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
