// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfcmpge_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [123.0f, 457.0f];
		const float[2] B = [124.0f, 456.0f];
		uint[2] c;

		asm{
			movq MM0, A;
			pfcmpge MM0, B;
			movq c, MM0;
		}

		if(c[0] != 0){
			assert(0);
		}
		if(c[1] != 0xFFFF_FFFF){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
