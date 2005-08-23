// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jcxz_01_A;

int main(){
	version(D_InlineAsm){
		uint a;
		
		asm{
			mov EAX, 0;
			mov CX, 0;
			jcxz save;
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