// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pavgusb_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE!()();

		const ubyte[8] A = [1, 2, 3, 4, 5, 6, 7, 8];
		const ubyte[8] B = [5, 2, 1, 8, 15, 4, 1, 4];
		const ubyte[8] C = [3, 2, 2, 6, 10, 5, 4, 6];
		ubyte[8] d;

		asm{
			movq MM0, A;
			pavgusb MM0, B;
			movq d, MM0;
			emms;
		}

		for(size_t i = 0; i < C.length; i++){
			if(d[i] != C[i]){
				assert(0);
			}
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
