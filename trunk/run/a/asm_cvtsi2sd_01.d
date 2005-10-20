// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cvtsi2sd_01;

int main(){
	version(D_InlineAsm){
		int i = -23000;
		double d = 0.0f;
		
		asm{
			cvtsi2sd XMM0, i;
			movq d, XMM0;
		}

		assert(d==-23000.0);
		assert(i==-23000);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}