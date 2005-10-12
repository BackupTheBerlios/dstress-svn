// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_pxor_01_A;

int main(){
	version(D_InlineAsm){
		ulong a = 0xFF01_00FF_0001_0000;
		ulong b = 0xFF00_00FF_0002_0000;
		ulong c = 2;
			
		asm{
			movq MM0, a;
			pxor MM0, b;
			movq c, MM0;
		}
				
		assert(c==0x0001_0000_0003_0000);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}