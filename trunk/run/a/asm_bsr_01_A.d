// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_bsr_01_A;

int main(){
	version(D_InlineAsm){
		uint a = 0x30000;
		
		asm{
			bsr EAX, a;
			mov a, EAX;
		}
		
		assert(a==17);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}