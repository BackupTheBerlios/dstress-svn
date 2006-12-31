// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2006-05-31
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=171
// @desc@	[Issue 171] 'wrong number of operands' for invlpg inline asm instruction

module dstress.compile.a.asm_invlpg_01_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(char[][] arg){
		void* p = arg.ptr;

		asm{
			mov EAX, p;
			invlpg EAX;
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}

