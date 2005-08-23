// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnz_01_B;

int main(){
	version(D_InlineAsm){
		int a;
		
		asm{
			mov EAX, 1;
			cmp EAX, 2;
			jnz save;
			mov EAX, 0;
		save:	mov a, EAX;
		}
		
		assert(a == 1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}