 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_mov_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		ubyte a = 0xFE;
		uint i;

		asm{
			mov EAX, 0x12_34_56_78;
			mov BL, a;
			mov AL, BL;
			mov i, EAX;
		}

		if(a != 0xFE){
			assert(0);
		}

		if(i != 0x12_34_56_FE){
			assert(0);
		}
    		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
