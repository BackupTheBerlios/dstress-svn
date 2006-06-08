// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jg_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.max;
		int b = int.min;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jg save;
			mov EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == int.max);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}