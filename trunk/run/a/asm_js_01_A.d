// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_js_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.min;

		asm{
			mov EAX, 0;
			cmp EAX, 1;
			js save;
			mov EAX, 5;
		save:	mov a, EAX;
		}

		assert(a == 0);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}