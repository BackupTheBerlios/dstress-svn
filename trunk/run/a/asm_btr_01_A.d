 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_btr_01_A;

version(D_InlineAsm_X86){
	version = doTest;
}else version(D_InlineAsm_X86_64){
	version = doTest;
}

int main(){
	version(doTest){
		ushort a = 3;
		ushort b = 0;

		asm{
			mov BX, b;
			btr a, BX;
			jnc error;
			btr a, BX;
			jc error;
			btr a, BX;
			jc error;
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
