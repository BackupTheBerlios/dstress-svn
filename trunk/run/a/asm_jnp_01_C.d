// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnp_01_C;

int main(){
	version(D_InlineAsm){
		byte a;

		asm{
			mov AL, 3;
			cmp AL, 3;
			jnp save;
			mov AL, 0;
		save:	mov a, AL;
		}

		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}