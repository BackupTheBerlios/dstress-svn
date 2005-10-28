// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_B;

void main(){
	version(D_InlineAsm){
		byte x;
		
		asm{
			fnsave x;
		}
	}
}