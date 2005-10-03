// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cmpnltss_01;

int main(){
	version(D_InlineAsm){
		float a = 1.2;
		float b = 1.2;
		uint res;
		
		asm{
			movd XMM0, a;
			cmpss XMM0, b, 5;
			movd res, XMM0;
		}
	
		assert(res == res.max);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}