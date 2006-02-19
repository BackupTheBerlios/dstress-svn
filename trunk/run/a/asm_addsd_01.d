// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_addsd_01;

int main(){
	version(D_InlineAsm){
		double a = 1.2;
		double b = 0.2;
		double c = 1.4;
		
		asm{
			movq XMM0, a;
			movq XMM1, b;
			addsd XMM1, XMM0;
			movq c, XMM1;
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