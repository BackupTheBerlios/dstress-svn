// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfrcp_01_B;

int main(){
	version(D_InlineAsm_X86){
		const float[2] A = [2.0f, 3.3f];
		float[2] c;

		asm{
			movq MM1, A;
			pfrcp MM0, MM1;
			movq c, MM0;
			emms;
		}

		c[0] -= 0.5f;
		if(c[0] < 0.0f){
			c[0] = -c[0];
		}
		if(c[0] > float.epsilon * (1 << 11)){
			assert(0);
		}

		c[1] -= 0.5f;
		if(c[1] < 0.0f){
			c[1] = -c[1];
		}
		if(c[1] > float.epsilon * (1 << 11)){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
