// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_leave_01;

int main(){
	version(D_InlineAsm){
		uint a = 1;
		
		asm{
			mov EAX, a;
			enter 2048, 30;
			leave;
			inc EAX;
			mov a, EAX;
		}
		
		assert(a == 2);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}