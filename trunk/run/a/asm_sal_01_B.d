 // $HeadURL: svn://dstress.kuehne.cn/run/a/asm_and_01.d $
 // $Date: 2005-09-08 09:37:28 +0200 (Thu, 08 Sep 2005) $
 // $Author: thomask $
 
module dstress.run.a.asm_sal_01_B;

int main(){
	version(D_InlineAsm){		
		uint a = 0xFF_FF_01_02;
		
		asm{
			mov EAX, a;
			sal AX, 1;
			mov a, EAX;
		}
		
		assert(a==0xFF_FF_02_04);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}