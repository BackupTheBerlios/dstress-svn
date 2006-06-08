// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jb_01_B;

int main(){
	version(D_InlineAsm){
		uint a=5;
		uint b=5;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jb save;
			add EAX, 1;
		save:	mov a, EAX;
		}

		assert(a == 6);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}