// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_bsr_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0x3000;
		
		asm{
			bsr AX, a;
			mov a, AX;
		}
		
		assert(a==13);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}