// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jz_01_A;

int main(){
	version(D_InlineAsm){
		uint a=5;
		uint b=5;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jz save;
			add EAX, 1;
		save:	mov a, EAX;
		}
		
		assert(a == 5);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}