// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtss2sd_01;

int main(){
	version(D_InlineAsm){
		float f = -19.0f;
		double d = 0.0f;

		asm{
			cvtss2sd XMM0, f;
			movq d, XMM0;
		}

		assert(d==-19.0);
		assert(f==-19.0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}