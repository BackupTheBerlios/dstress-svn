// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_clts_01;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	int main(){
		asm{
			clts;
		}
	
		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no x86 inline asm support");
	static assert(0);
}
