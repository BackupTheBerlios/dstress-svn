// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	news:bug-173-3@http.d.puremagic.com/bugzilla

module dstress.run.a.asm_movq_02_O;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const long A = 0x12_34_56_78_9A_BC_DE_F0;
		long b;

		asm{
			movq MM0, A;
			movq b, MM0;
			emms;
		}

		if(A != 0x12_34_56_78_9A_BC_DE_F0){
			assert(0);
		}
		if(b != 0x12_34_56_78_9A_BC_DE_F0){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
