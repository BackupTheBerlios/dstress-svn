// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=173

// __DSTRESS_ELINE__ 28

module dstress.nocompile.a.asm_movq_02_U;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	void main(){
		haveSSE2!()();
		
		cfloat[0] a;

		asm{
			movq MM0, a;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
