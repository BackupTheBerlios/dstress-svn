// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_sub_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_cmpxch8b_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 1;
		uint d = 1;
		ulong c = 0;
		asm{
			mov EAX, 0;
			mov EDX, 0;
			
			mov EBX, 0xFFFFFFFF;
			mov ECX, 0xFFFFFFFF;
			cmpxch8b c;
			
			mov a, EAX;
			mov d, EDX;
		}

		assert(c==c.max);
		assert(a==0);
		assert(d==0);
		
		c=1;
		
		asm{
			mov EAX, 0;
			mov EDX, 0;
			
			mov EBX, 0xFFFFFFFF;
			mov ECX, 0xFFFFFFFF;
			cmpxch8b c;
			
			mov a, EAX;
			mov d, EDX;
		}

		
		assert(c==1);
		assert(a==1);
		assert(d==0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}