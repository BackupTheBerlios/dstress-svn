// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_js_01_B;

int main(){
	version(D_InlineAsm){
		int a = int.min;
		
		asm{
			mov EAX, 0;
			cmp EAX, 0;
			js save;
			mov EAX, 5;
		save:	mov a, EAX;
		}
		
		assert(a == 5);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}