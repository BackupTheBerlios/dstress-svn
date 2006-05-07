 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_cmova_02_B;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		uint a;
		uint d = 0x12_34_56_FE;
		asm{
			mov ECX, 0xAB_CD_EF_01;
			mov AL, 1;
			mov BL, 2;
			cmp AL, BL;
			cmova ECX, d;
			mov a, ECX;
		}

		if(a != 0xAB_CD_EF_01){
			assert(0);
		}

		asm{
			mov ECX, 0xAB_CD_EF_01;
			mov AL, 2;
			mov BL, 1;
			cmp AL, BL;
			cmova ECX, d;
			mov a, ECX;
		}
		if(a != 0x12_34_56_FE){
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
