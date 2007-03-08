// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_str_01;

version(D_InlineAsm_X86){
	version = test;
}else version(D_Inline_Asm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline x86 asm support");
}

version(test){
	int main(){
		ushort a = 0;

		asm{
			str a;
		}

		assert(a != 0);

		return 0;
	}
}
