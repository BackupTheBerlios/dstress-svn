// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jpo_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		
		asm{
			mov EAX, 8;
			cmp EAX, 2;
			jpo save;
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