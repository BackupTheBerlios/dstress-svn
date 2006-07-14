// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pfacc_01_B;

int main(){
	version(D_InlineAsm_X86){
		float[] a = new float[2];
		a[0] = 123.0f;
		a[1] = -456.0f;
		
		float[] b = new float[2];
		b[0] = 12.0f;
		b[1] = 17.0f;
		
		float[] c = new float[2];

		asm{
			movq MM0, a;
			movq MM1, b;
			pfacc MM0, MM1;
			movq c, MM0;
			emms;
		}

		if(c[0] != -333.0f){
			assert(0);
		}
		if(c[1] != 29.0f){
			assert(0);
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
