// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnz_01_A;

int main(){
	version(D_InlineAsm){
		int a;

		asm{
			mov EAX, 1;
			cmp EAX, 1;
			jnz save;
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