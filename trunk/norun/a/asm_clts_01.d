// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_cl_01.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.norun.a.asm_clts_01;

int main(){
	version(D_InlineAsm){
		asm{
			clts;
		}
	
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}