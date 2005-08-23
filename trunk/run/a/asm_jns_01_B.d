// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_jns_01_B;

int main(){
	version(D_InlineAsm){
		int a;
		
		asm{
			mov EAX, 3;
			cmp EAX, 2;
			jns save;
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