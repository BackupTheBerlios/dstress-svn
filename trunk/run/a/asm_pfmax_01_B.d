// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfmax_01_B;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [-123.0f, 457.0f];
		const float[2] B = [123.0f, 456.0f];
		float[2] c;

		asm{
			movq MM0, A;
			movq MM1, B;
			pfmax MM0, MM1;
			movq c, MM0;
		}

		if(c[0] != B[0]){
			assert(0);
		}
		if(c[1] != A[1]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
