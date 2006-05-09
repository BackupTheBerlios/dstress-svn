// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_clc_01;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

int main(){
	version(runTest){
		uint a;
		
		asm{
			mov EAX, 1;
			cmp EAX, 2;
			clc;
			jb dummy;
			inc EAX;
		dummy:
			inc EAX;
			mov a, EAX;
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
