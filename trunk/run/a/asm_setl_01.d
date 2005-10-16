// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_setl_01;

int main(){
	version(D_InlineAsm){
		ubyte a;
		
		a = a.max;
		
		asm{
			mov EAX, 3;
			cmp EAX, -4;
			setl a;
		}
		
		assert(a == 0);
		
		a = a.max;
		
		asm{
			mov EAX, -4;
			cmp EAX, 3;
			setl a;
		}
		
		assert(a == 1);
		
		a = a.max;
		
		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setl a;
		}
		
		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}