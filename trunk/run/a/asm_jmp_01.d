// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jmp_01;

int main(){
	version(D_InlineAsm_X86){
		int a = 0;
		
		asm{
			mov EAX, 0;
			add EAX, 1;
		save1:	mov a, EAX;
		}
		
		if(a != 1){
			assert(0);
		}
		
		asm{
			mov EAX, 0;
			jmp save2;
			add EAX, 1;
		save2:	mov a, EAX;
		}

		if(a != 0){
			assert(0);
		}
		
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
