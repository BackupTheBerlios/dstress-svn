// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jnc_01_A;

int main(){
	version(D_InlineAsm){
		uint a;

		asm{
			clc;
			mov EAX, 1;
			jnc save;
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