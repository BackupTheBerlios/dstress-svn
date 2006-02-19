// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_not_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 0b0110_1110;
		
		asm{
			not a;
		}
		
		assert(a == 0b1001_0001);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}