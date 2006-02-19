// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ror_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 0b1111_1100__0000_0000__0111_1111__1111_1111;
			
		asm{
			ror a, 1;
		}

		assert(a == 0b1111_1110__0000_0000__0011_1111__1111_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}