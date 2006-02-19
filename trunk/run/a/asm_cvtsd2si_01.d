// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cvtsd2si_01;

int main(){
	version(D_InlineAsm){
		uint i = 0;
		double f = 64.0f;
		
		asm{
			cvtsd2si EAX, f;
			mov i, EAX;
		}

		assert(i==64);
		assert(f==64.0f);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}