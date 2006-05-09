// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cbw_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint i=0x12_3F_FF_FFu;
		byte b=-128;
		
		asm{
			mov EAX, i;
			mov AL, b;
			cbw;
			mov i, EAX;
		}
	
		if(i != 0x12_3F_FF_80u){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
