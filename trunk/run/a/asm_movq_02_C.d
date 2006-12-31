// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=173

// __DSTRESS_TORTURE_BLOCK__ -fPIC

module dstress.run.a.asm_movq_02_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();

		const char[8] A = [3, 4, 9, 0, 1, 3, 7, 2];
		char[8] b;

		asm{
			movq MM0, A;
			movq b, MM0;
			emms;
		}

		for(size_t i = 0; i < A.length; i++){
			if(A[i] != b[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
