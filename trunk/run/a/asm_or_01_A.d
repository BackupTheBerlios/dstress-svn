// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_01_A;

int main(){
	version(D_InlineAsm){
		uint a = 0b0110_1110__0000_1111__1100_0011__0011_1111;
		uint b = 0b1110_1111__1111_1111__1111_1110__0111_1111;
		
		asm{
			mov EAX, a;
			or b, EAX;
		}
		
		assert(b == 0b1110_1111__1111_1111__1111_1111__0111_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}