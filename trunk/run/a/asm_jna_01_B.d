// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jna_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 3;
		uint b = 3;

		asm{
			mov EAX, a;
			cmp EAX, b;
			jna save;
			mov EAX, 0;
		save:	mov a, EAX;
		}

		assert(a == 3);

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}