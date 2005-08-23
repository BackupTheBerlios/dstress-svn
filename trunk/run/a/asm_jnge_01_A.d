// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnge_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.max;
		int b = int.min;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jnge save;
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