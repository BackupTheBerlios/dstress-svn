// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jp_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		
		asm{
			mov AL, 1;
			cmp AL, 1;
			jp save;
			mov EAX, 0;
		save:	mov a, EAX;
		}
		
		assert(a == 1);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}