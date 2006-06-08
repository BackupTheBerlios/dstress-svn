// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_je_01_B;

int main(){
	version(D_InlineAsm){
		uint a;

		asm{
			mov EAX, 0;
			cmp EAX, 0;
			je save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}