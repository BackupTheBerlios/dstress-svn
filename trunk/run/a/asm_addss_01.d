// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addss_01;

int main(){
	version(D_InlineAsm){
		float a = 1.2;
		float b = 0.2;
		float c = 1.4;
		
		asm{
			movd XMM0, a;
			movd XMM1, b;
			addss XMM1, XMM0;
			movd c, XMM1;
		}
		
		a += b;
		
		b = a-c;
		b = (b>0) ? b : (-1 * b);
		
		assert(b < b.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}