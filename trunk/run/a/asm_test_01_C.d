// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_test_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 3u;
		uint b = 2u;
		
		asm{
			mov EAX, a;
			test b, EAX;
			jg dummy;
			mov a, 0;
		dummy:
			inc a;
		}
	
		assert(a==4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}