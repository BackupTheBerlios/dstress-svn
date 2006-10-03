// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfcmpge_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float* a = [123.0f, 458.0f];
		float* b = [124.0f, 456.0f];
		uint* c = new uint[2];

		asm{
			mov EAX, a;
			movq MM0, [EAX];
			mov EAX, b;
			movq MM1, [EAX];
			pfcmpge MM0, MM1;
			mov EAX, c;
			movq [EAX], MM0;
			emms;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0xFFFF_FFFF){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
