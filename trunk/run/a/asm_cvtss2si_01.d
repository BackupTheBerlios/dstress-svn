// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cvtss2si_01;

int main(){
	version(D_InlineAsm){
		float f = -19.0f;
		int i = 0;
		
		asm{
			cvtss2si EAX, f;
			mov i, EAX;
		}

		assert(i==-19);
		assert(f==-19.0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}