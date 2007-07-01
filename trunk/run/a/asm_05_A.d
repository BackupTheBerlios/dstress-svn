// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa (Deewiant) <deewiant@gmail.com>
// @date@	2007-05-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1152
// @desc@	[Issue 1152] Inline assembler: cannot use properties of types

module dstress.run.a.asm_05_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 1;

		asm{
			mov i, i.max; 
		}

		if(0x7FFF_FFFF != i){
			assert(0);
		}

		return 0;
	}
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 ASM support");
}
