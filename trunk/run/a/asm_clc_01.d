// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_clc_01;

int main(){
	version(D_InlineAsm){
		uint a;
		
		asm{
			mov EAX, 1;
			cmp EAX, 2;
			clc;
			jb dummy;
			inc EAX;
		dummy:
			inc EAX;
			mov a, EAX;
		}
	
		assert(a==3);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}