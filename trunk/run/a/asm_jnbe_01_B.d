// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnbe_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 4;
		uint b = 4;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jnbe save;
			mov EAX, 0;
		save:	mov a, EAX;
		}
		
		assert(a == 0);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}