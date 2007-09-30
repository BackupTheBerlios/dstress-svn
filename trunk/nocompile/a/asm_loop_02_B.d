// $HeadURL$
// $Date$
// $Author$

// @author@	<grahamc001uk@yahoo.co.uk>
// @date@	2007-09-28
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1539
// @desc@	[Issue 1539] X86 inline assembler fails to recognize when the branch address outside range

module dstress.nocompile.a.asm_loop_02_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int count = 0;

		asm{
			mov EAX, 0;
			mov ECX, 2;
		Lnext:
			inc EAX;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			nop;
			loop Lnext;
		Ldone:
			mov count, EAX;
		}

		if(2 != count){
			assert(0);
		}

		return 0;
	}
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 ASM support");
}
