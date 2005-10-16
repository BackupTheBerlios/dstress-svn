// $HeadURL: svn://dstress.kuehne.cn/run/a/asm_add_01_C.d $
// $Date: 2005-08-20 20:24:41 +0200 (Sat, 20 Aug 2005) $
// $Author: thomask $

module dstress.run.a.asm_pusha_01;

int main(){
	version(D_InlineAsm){
		static if(size_t.sizeof <= 4){
			ushort a1, b1, c1, d1;
			ushort a2, b2, c2, d2;
			ushort a3, b3, c3, d3;
			
			asm{
				mov a1, AX;
				mov b1, BX;
				mov c1, CX;
				mov d1, DX;
				pusha;
				mov EAX, 1;
				mov EBX, 2;
				mov ECX, 3;
				mov EDX, 4;
				mov a2, AX;
				mov b2, BX;
				mov c2, CX;
				mov d2, DX;
				popa;
				mov a3, AX;
				mov b3, BX;
				mov c3, CX;
				mov d3, DX;				
			}
			
			assert(a1 == a3);
			assert(b1 == b3);
			assert(c1 == c3);
			assert(d1 == d3);
			
			assert(a2 == 1);
			assert(b2 == 2);
			assert(c2 == 3);
			assert(d2 == 4);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}