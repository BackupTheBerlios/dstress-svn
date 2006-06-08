// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jo_01_B;

int main(){
	version(D_InlineAsm){
		int a = int.min-1;

		asm{
			mov EAX, a;
			cmp EAX, 1;
			jo save;
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