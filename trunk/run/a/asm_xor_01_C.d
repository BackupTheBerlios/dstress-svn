// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_xor_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 1u;
		uint b = 3u;
		
		asm{
			mov EAX, a;
			xor b, EAX;
			mov a, EAX;
		}
	
		assert(a==1u);
		assert(b==2u);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}