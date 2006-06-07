// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrsqrt_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [4.0f, 3.3f];
		float[2] b;

		asm{
			pfrsqrt MM0, A;
			movq b, MM0;
			emms;
		}

		b[0] -= 0.5f;
		if(b[0] < 0.0f){
			b[0] = -b[0];
		}
		if(b[0] > float.epsilon * (1 << 11)){
			assert(0);
		}
		
		b[1] -= 0.5f;
		if(b[1] < 0.0f){
			b[1] = -b[1];
		}
		if(b[1] > float.epsilon * (1 << 11)){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
