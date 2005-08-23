// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jge_01_C;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		int b = int.max;
		
		asm{
			mov EAX, a;
			cmp EAX, b;
			jge save;
			mov EAX, 1;
		save:	mov a, EAX;
		}
		
		assert(a == 1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}