 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_cmova_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a;
		asm{
			mov ECX, 0xAB_CD_EF_01;
			mov DX, 0x12_34;
			mov AL, 1;
			mov BL, 2;
			cmp AL, BL;
			cmova CX, DX;
			mov a, ECX;
		}

		if(a != 0xAB_CD_EF_01){
			assert(0);
		}

		asm{
			mov ECX, 0xAB_CD_EF_01;
			mov DX, 0x12_34;
			mov AL, 2;
			mov BL, 1;
			cmp AL, BL;
			cmova CX, DX;
			mov a, ECX;
		}
		if(a != 0xAB_CD_12_34){
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
