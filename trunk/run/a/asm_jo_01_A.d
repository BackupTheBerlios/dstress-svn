// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jo_01_A;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		
		asm{
			mov EAX, a;
			cmp EAX, 1;
			jo save;
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