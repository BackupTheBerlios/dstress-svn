// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_M;

void main(){
	version(D_InlineAsm){
		creal x;
		
		asm{
			frndint x;
		}
	}
}