 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_mov_02_D;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		uint i;

		asm{
			mov EAX, 0x12_34_56_78;
			mov AX, 0x33_FE;
			mov i, EAX;
		}

		if(i != 0x12_34_33_FE){
			assert(0);
		}
    		
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
