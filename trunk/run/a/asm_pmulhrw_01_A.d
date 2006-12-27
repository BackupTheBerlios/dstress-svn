// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pmulhrw_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		ulong a = 0xD250_5321_7007_FFFF;
		ulong b = 0x8807_EC22_7FFE_FFFF;
		ulong c;

		asm{
			movq MM0, a;
			movq MM1, b;
			pmulhrw MM0, MM1;
			movq c, MM0;
		}

		if(c != 0x1569_F98C_3803_0000){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
