// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_fisub_01_B;

int main(){
	version(D_InlineAsm){
		real a = 2.4L;
		short b = 19;
		
		asm{
			fld a;
			fisub b;
			fstp a;
		}
		
		assert(a<0);
		
		a += 16.6L;
		
		a = (a>0) ? a : -a;
		
		assert(a < a.epsilon * 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}