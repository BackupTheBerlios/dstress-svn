// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrsqrtit1_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		float* a = (new float[2]).ptr;
		a[0] = 4.0f;
		a[1] = 0.5f;

		static if(size_t.sizeof == 4){
			asm{
				mov EAX, a;
				movq MM1, [EAX];
				pfrsqrt MM0, MM1;
				pfrsqit1 MM0, MM1;
				movq [EAX], MM0;
				emms;
			}
		}else static if(size_t.sizeof == 8){
			asm{
				mov RAX, a;
				movq MM1, [RAX];
				pfrsqrt MM0, MM1;
				pfrsqit1 MM0, MM1;
				movq [RAX], MM0;
				emms;
			}
		}else{
			static assert(0, "unhandled pointer size");
		}

		a[0] -= 1.001953f;
		if(a[0] < 0.0f){
			a[0] = -a[0];
		}
		if(a[0] > float.epsilon * (1 << 8)){
			assert(0);
		}

		a[1] -= 1.001953f;
		if(a[1] < 0.0f){
			a[1] = -a[1];
		}
		if(a[1] > float.epsilon * (1 << 8)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XPASS}: no inline ASM support");
	static assert(0);
}
