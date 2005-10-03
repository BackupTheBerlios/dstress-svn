// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_bsf_01_A;

int main(){
	version(D_InlineAsm){
		ushort a = 0x3000;
		
		asm{
			bsf AX, a;
			mov a, AX;
		}
		
		assert(a==12);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}