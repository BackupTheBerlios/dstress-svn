// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2006-12-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=697
// @desc@	[Issue 697] No const folding on asm db,dw, etc

module dstress.run.a.asm_di_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int i = 3;

		asm{
			mov EAX, i;
			di 0x4040_1010 + 0x0000_3030;
			mov i, EAX;
		}

		assert(i == 7);

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
