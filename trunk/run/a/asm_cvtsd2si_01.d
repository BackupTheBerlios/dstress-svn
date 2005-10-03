// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cvtsd2si_01;

int main(){
	version(D_InlineAsm){
		uint i = 0;
		double f = 64.0f;
		
		asm{
			cvtsd2si EAX, f;
			mov i, EAX;
		}

		assert(i==64);
		assert(f==64.0f);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}