// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movq_01_A;

int main(){
	version(D_InlineAsm){
		
		ulong a = 0x1234_ABCD_5678_EF01;
		ulong b = 2;
		
		asm{
			movq MM0, a;
			movq b, MM0;
		}
		
		assert(a==b);
		assert(b==0x1234_ABCD_5678_EF01);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}