// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_cmpxchg_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 0;
		uint c = 3;
		asm{
			mov EAX, 1;
			mov EBX, 2;
			cmpxchg c, EBX;
			mov a, EAX;
		}
	
		assert(c==3);
		assert(a==3);
		
		a = 0;
		c = 3;
		
		asm{
			mov EAX, 3;
			mov EBX, 2;
			cmpxchg c, EBX;
			mov a, EAX;
		}
		
		assert(c==2);
		assert(a==3);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}