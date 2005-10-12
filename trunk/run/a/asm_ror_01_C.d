// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

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