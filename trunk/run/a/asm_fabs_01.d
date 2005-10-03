// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_fabs_01;

int main(){
	version(D_InlineAsm){
		float f = -1.0f;
		
		asm{
			finit;
			fld f;
			fabs;
			fst f;
		}
		
		assert(f == 1.0);
		
		f = 2.0;
		
		asm{
			finit;
			fld f;
			fabs;
			fst f;
		}
		
		assert(f == 2.0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}