// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_B;

int main(){
	version(D_InlineAsm){
		
		ulong a = 0x1234_ABCD_5678_EF01;
		ulong b = 2;
		
		asm{
			movq XMM0, a;
			movq b, XMM0;
		}
		
		assert(a==b);
		assert(b==0x1234_ABCD_5678_EF01);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}