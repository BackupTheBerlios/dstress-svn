// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfsub_01_B;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [6.0f, 2.0f];
		const float[2] B = [2.0f, -1.0f];
		float[2] c;

		asm{
			movq MM0, A;
			pfsub MM0, B;
			movq c, MM0;
		}

		if(c[0] != 4.0f){
			assert(0);
		}

		if(c[1] != 3.0f){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
