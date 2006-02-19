// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0;
		ushort c = 3;
		asm{
			mov AX, 1;
			mov BX, 2;
			cmpxchg c, BX;
			mov a, AX;
		}
	
		assert(c==3);
		assert(a==3);
		
		a = 0;
		c = 3;
		
		asm{
			mov AX, 3;
			mov BX, 2;
			cmpxchg c, BX;
			mov a, AX;
		}
		
		assert(c==2);
		assert(a==3);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}