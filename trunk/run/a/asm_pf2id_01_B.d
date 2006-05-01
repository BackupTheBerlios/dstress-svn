// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pf2id_01_B;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [123.0f, -456.0f];
		int[2] b;

		asm{
			movq MM1, A;
			pf2id MM0, MM1;
			movq b, MM0;
		}

		if(b[0] != A[0]){
			assert(0);
		}
		if(b[1] != A[1]){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
