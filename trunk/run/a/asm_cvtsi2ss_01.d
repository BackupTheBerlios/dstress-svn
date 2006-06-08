// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsi2ss_01;

int main(){
	version(D_InlineAsm){
		int i = -23000;
		float f = 0.0f;

		asm{
			cvtsi2ss XMM0, i;
			movd f, XMM0;
		}

		assert(f==-23000.0);
		assert(i==-23000);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}