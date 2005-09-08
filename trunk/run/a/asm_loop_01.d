// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_loop_01;

int main(){
	version(D_InlineAsm){
		int a;
		
		asm{
			mov EAX, 0;
			mov ECX, 10;
		start:	inc EAX;
			loop start;
			mov a, EAX;
		}
		
		assert(a == 10);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}