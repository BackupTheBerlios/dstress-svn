// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jne_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 4;
		uint b = 3;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jne save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 4);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}