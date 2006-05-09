// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		ubyte a = 0;
		ubyte c = 3;
		asm{
			mov AL, 1;
			mov BL, 2;
			mov CL, c;
			cmpxchg CL, BL;
			mov a, AL;
			mov c, CL;
		}
	
		if(c != 3){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}
		
		a = 0;
		c = 3;
		
		asm{
			mov AL, 3;
			mov BL, 2;
			mov CL, c;
			cmpxchg CL, BL;
			mov a, AL;
			mov c, CL;
		}
		
		if(c != 2){
			assert(0);
		}
		if(a != 3){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
		static assert(0);
	}
}
