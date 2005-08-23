// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnbe_01_A;

int main(){
	version(D_InlineAsm){
		uint a = 4;
		uint b = 3;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jnbe save;
			mov EAX, 0;
		save:	mov a, EAX;
		}
		
		assert(a == 4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}