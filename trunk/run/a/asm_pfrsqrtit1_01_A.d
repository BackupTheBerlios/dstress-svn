// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrsqrtit1_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [4.0f, 0.5f];
		float[2] c;

		asm{
			pfrsqrt MM0, A;
			pfrsqit1 MM0, A;
			movq c, MM0;
		}

		c[0] -= 0.5f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * (1 << 8)){
			assert(0);
		}
		
		c[1] -= 4.0f;
		if(c[1] < 0.0f){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * (1 << 8)){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
