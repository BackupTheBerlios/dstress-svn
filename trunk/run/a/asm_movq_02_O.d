// $HeadURL$
// $Date$
// $Author$

// @author@	<thomas-dloop@kuehne.cn>
// @date@	2006-05-26
// @uri@	news:bug-173-3@http.d.puremagic.com/bugzilla

// __DSTRESS_TORTURE_BLOCK__ -fPIC

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

		long a = 0x12_34_56_78_9A_BC_DE_F0;
		long b;

		static if(size_t.sizeof == 4){
			asm{
				lea EAX, a;
				movq MM0, [EAX];
				movq b, MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				lea RAX, a;
				movq MM0, [RAX];
				movq b, MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		if(a != 0x12_34_56_78_9A_BC_DE_F0){
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
