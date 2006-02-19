// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_setnp_01;

int main(){
	version(D_InlineAsm){
		ubyte a;
		
		a = a.max;
		
		asm{
			mov EAX, 3;
			cmp EAX, 4;
			setnp a;
		}
		
		assert(a == 0);
		
		a = a.max;
		
		asm{
			mov EAX, 4;
			cmp EAX, 3;
			setnp a;
		}
		
		assert(a == 1);
		
		a = a.max;
		
		asm{
			mov EAX, 4;
			cmp EAX, 4;
			setnp a;
		}
		
		assert(a == 0);
		
		a = a.max;
		
		asm{
			mov EAX, 8;
			cmp EAX, 6;
			setnp a;
		}
		
		assert(a == 1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}