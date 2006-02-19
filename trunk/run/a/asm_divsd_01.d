// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_divsd_01;

int main(){
	version(D_InlineAsm){
		double a = -4.2f;
		double b = 2.0f;
		
		asm{
			movq XMM0, a;
			divsd XMM0, b;
			movq b, XMM0;
		}

		b = b + 2.1f;
		assert(b< b.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}