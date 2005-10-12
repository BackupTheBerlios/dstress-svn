// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_ax_01.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_not_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 0b0110_1110__0000_1111__1100_0011__0011_1111;
		
		asm{
			not a;
		}
		
		assert(a == 0b1001_0001__1111_0000_0011_1100_1100_0000);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}