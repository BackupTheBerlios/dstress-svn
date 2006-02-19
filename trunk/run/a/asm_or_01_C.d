// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_01_C;

int main(){
	version(D_InlineAsm){
		ubyte a = 0b0110_1110;
		ubyte b = 0b1110_1111;
		
		asm{
			mov AL, a;
			or b, AL;
		}
		
		assert(b == 0b1110_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}