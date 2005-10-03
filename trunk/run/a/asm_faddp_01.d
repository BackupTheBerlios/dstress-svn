// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_faddp_01;

int main(){
	version(D_InlineAsm){
		double a = -1.0f;
		double b = 3.5f;
		
		asm{
			finit;
			fld a;
			fld b;
			faddp;
			fst a;
		}
		
		assert(a > 0);
		
		a -= 2.5f;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon*4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}