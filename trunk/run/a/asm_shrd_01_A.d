// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_shrd_01_A;

int main(){
	version(D_InlineAsm){
		
		ushort a = 0b0000_0000__1000_0000;
		ushort b = 0b1000_0000__0000_0101;
		
		asm{
			mov BX, b;
			shrd a, BX, 3;
			mov b, BX;
		}
		
		assert(a == 0b1010_0000__0001_0000);
		assert(b == 0b1000_0000__0000_0101);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}