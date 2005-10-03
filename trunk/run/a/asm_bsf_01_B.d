// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_bsf_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 0x30000;
		
		asm{
			bsf EAX, a;
			mov a, EAX;
		}
		
		assert(a==16);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}