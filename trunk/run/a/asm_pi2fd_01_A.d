// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pi2fd_01_A;

int main(){
	version(D_InlineAsm_X86){
		const int[2] A = [6, 2];
		float[2] b;

		asm{
			movq MM1, A;
			pi2fd MM0, MM1;
			movq b, MM0;
		}

		if(b[0] != 6.0f){
			assert(0);
		}

		if(b[1] != 2.0f){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
