// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtss2si_01;

int main(){
	version(D_InlineAsm){
		float f = -19.0f;
		int i = 0;

		asm{
			cvtss2si EAX, f;
			mov i, EAX;
		}

		assert(i==-19);
		assert(f==-19.0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}