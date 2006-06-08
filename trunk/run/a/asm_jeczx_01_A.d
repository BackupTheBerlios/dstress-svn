// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jecxz_01_A;

int main(){
	version(D_InlineAsm){
		uint a;

		asm{
			mov EAX, 0;
			mov ECX, 0;
			jecxz save;
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