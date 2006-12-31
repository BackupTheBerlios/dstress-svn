// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2006-12-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=747
// @desc@	[Issue 747] undefined reference to `.LDASM1'

module dstress.run.a.asm_jmp_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		asm{
			jmp label;
		}

		return 1;
	label:
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
