// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrcpit2_01_B;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	import addon.cpuinfo;

	int main(){
		have3DNow!()();

		const float[2] A = [2.0f, -0.5f];
		float[2] c;

		asm{
			movq MM1, A;
			pfrcp MM0, MM1;
			pfrcpit1 MM0, MM1;
			pfrcpit2 MM0, MM1;
			movq c, MM0;
			emms;
		}

		c[0] -= 2.000061f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * (1 << 8)){
			assert(0);
		}

		c[1] += 0.500015f;
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
