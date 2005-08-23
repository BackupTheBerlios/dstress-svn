// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_je_01_A;

int main(){
	version(D_InlineAsm){
		uint a;
		
		asm{
			mov EAX, 0;
			cmp EAX, 1;
			je save;
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