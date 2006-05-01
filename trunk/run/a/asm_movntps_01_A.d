// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movntps_01_A;

int main(){
	version(D_InlineAsm_X86){
		const float[4] a = [1.0, -1.0, 0.0, 0.1];
		float[4] b;
		
		asm{
			movdqu XMM0, a;
			movntps b, XMM0;
		}
		
		if(a[0] != b[0]){
			assert(0);
		}
		if(a[1] != b[1]){
			assert(0);
		}
		if(a[2] != b[2]){
			assert(0);
		}
		if(a[3] != b[3]){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
