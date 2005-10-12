// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_ax_01.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_not_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0b0110_1110_0000_1111;
		
		asm{
			not a;
		}
		
		assert(a == 0b1001_0001_1111_0000);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}