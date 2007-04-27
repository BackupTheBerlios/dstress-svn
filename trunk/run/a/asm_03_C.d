// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1173
// @desc@	[Issue 1173] Inline assembler: cannot use global scope operator

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_03_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline ASM support");
}

version(runTest){
	int x = 0x12AB_89EF;

	int main(){
		alias .x X;
		int y = 0xCAFFEE;

		asm{
			mov EAX, X;
			mov y, EAX;
		}

		if(y != 0x12AB_89EF){
			assert(0);
		}

		return 0;
	}
}
