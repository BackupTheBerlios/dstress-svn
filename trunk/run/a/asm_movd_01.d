// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_movd_01;

int main(){
	version(D_InlineAsm){
		
		uint a = 0x1234_ABCD;
		int b = 2;
		
		asm{
			movd MM0, a;
			movd b, MM0;
		}
		
		assert(a==b);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}