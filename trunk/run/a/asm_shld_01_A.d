// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shld_01_A;

int main(){
	version(D_InlineAsm){

		ushort a = 0b0000_0000__1000_0000;
		ushort b = 0b1010_0000__0000_0000;

		asm{
			mov BX, b;
			shld a, BX, 3;
			mov b, BX;
		}

		assert(a == 0b0000_0100__0000_0101);
		assert(b == 0b1010_0000__0000_0000);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}