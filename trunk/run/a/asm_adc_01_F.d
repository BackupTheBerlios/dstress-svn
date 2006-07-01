// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_adc_01_F;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int a;

		asm{
			clc;
			mov EAX, 3;
			adc EAX, 5;
			mov a, EAX;
		}

		if(a != 8){
			assert(0);
		}

		asm{
			stc;
			mov EAX, 3;
			adc EAX, 5;
			mov a, EAX;
		}

		if(a != 9){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}

