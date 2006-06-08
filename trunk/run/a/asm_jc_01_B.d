// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jc_01_B;

int main(){
	version(D_InlineAsm){
		uint a;

		asm{
			mov EAX, 0;
			clc;
			jc save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 1);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}