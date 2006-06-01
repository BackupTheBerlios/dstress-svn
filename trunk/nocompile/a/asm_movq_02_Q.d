// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	news:bug-173-3@http.d.puremagic.com/bugzilla

// __DSTRESS_ELINE__ 28

module dstress.nocompile.a.asm_movq_02_Q;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	void main(){
		haveSSE2!()();
		
		double[0] a;

		asm{
			movq MM0, a;
		}
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
