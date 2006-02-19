// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_or_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0b0110_1110__0000_1111;
		ushort b = 0b1110_1111__1110_0111;
		
		asm{
			mov AX, a;
			or b, AX;
		}
		
		assert(b == 0b1110_1111__1110_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}