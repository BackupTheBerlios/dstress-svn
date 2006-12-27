// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrcpit1_01_A;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		haveMMX!()();
		have3DNow!()();

		float* a = (new float[2]).ptr;
		a[0] = 2.0f;
		a[1] = -0.5f;

		float* c = (new float[2]).ptr;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				pfrcp MM0, [EAX];
				pfrcpit1 MM0, [EAX];
				mov EAX, c;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				pfrcp MM0, [RAX];
				pfrcpit1 MM0, [RAX];
				mov RAX, c;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		c[0] -= 1.007812f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * (1 << 8)){
			assert(0);
		}

		c[1] -= 1.007812;
		if(c[1] < 0.0f){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * (1 << 8)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
