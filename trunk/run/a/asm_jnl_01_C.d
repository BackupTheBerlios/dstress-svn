// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnl_01_C;

int main(){
	version(D_InlineAsm){
		int a = uint.min;
		int b = uint.max;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jnl save;
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