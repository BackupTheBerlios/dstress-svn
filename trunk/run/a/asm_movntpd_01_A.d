// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntpd_01_A;

int main(){
	version(D_InlineAsm_X86){
		const double[2] a = [1.0, -1.0];
		double[2] b;
		
		asm{
			movdqu XMM0, a;
			movntpd b, XMM0;
		}
		
		if(a[0] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
