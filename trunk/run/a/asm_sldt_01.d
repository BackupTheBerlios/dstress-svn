// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_sldt_01;

int main(){
	version(D_InlineAsm){
		
		ushort u = 1;
		
		asm{
			sldt u;
		}
		
		assert(u == 0); // is this realy safe ?
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}