// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnle_01_B;

int main(){
	version(D_InlineAsm){
		int a = 4;
		int b = 4;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jnle save;
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