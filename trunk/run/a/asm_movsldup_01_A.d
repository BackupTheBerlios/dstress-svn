// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movsldup_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[4] a = [1.0, -1.0, -2.0, 2.0];
		double[4] b;
		
		asm{
			movdqu XMM0, a;
			movsldup XMM1, XMM0;
			movdqu b, XMM1;
		}
		
		if(a[0] != b[0]){
			assert(0);
		}
		if(a[0] != b[1]){
			assert(0);
		}
		if(a[2] != b[2]){
			assert(0);
		}
		if(a[2] != b[3]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
