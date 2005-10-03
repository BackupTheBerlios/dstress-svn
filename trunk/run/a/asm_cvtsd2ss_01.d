// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cvtsd2ss_01;

int main(){
	version(D_InlineAsm){
		double d = 64.0f;
		float f = 0.0;
		
		
		asm{
			cvtsd2ss XMM0, d;
			movd f, XMM0;
		}

		assert(d==64.0f);
		assert(f==64.0f);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}