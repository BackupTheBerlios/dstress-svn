// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jng_01_C;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		int b = int.max;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jng save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == int.min);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}