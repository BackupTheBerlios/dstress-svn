// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jno_01_B;

int main(){
	version(D_InlineAsm){
		int a = int.min+1;
		int b = 1;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jno save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == int.min+1);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}