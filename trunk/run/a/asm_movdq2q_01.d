// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movdq2q_01;

int main(){
	version(D_InlineAsm){
		double a = -2.5;
		double b = 1.1;
		
		asm{
			movq XMM0, a;
			movdq2q MM0, XMM0;
			movq b, XMM0;
		}
		
		if(a==b){
			return 0;
		}
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
