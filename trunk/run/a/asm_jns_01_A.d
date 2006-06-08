// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jns_01_A;

int main(){
	version(D_InlineAsm){
		int a;

		asm{
			mov EAX, 2;
			cmp EAX, 3;
			jns save;
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