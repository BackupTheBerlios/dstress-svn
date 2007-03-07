// $HeadURL$
// $Date$
// $Author$

// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=709
// @desc@	[Issue 709] inline assembler: "CVTPD2PI mm, xmm/m128" fails to compile

module dstress.run.a.asm_cvtpd2pi_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveSSE2!()();
		haveMMX!()();

		double* a = (new double[2]).ptr;
		a[0] = -2.0;
		a[1] = 4.0;
		
		int* b = (new int[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movupd XMM0, [EAX];
				cvtpd2pi MM0, XMM0;
				mov EAX, b;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movupd XMM0, [RAX];
				cvtpd2pi MM0, XMM0;
				mov RAX, b;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(b[0] != -2){
			assert(0);
		}
		if(b[1] != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
