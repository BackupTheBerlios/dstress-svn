// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_call_01;

int main(){
	version(D_InlineAsm){
		uint a = 0xAB_34_56_78;
		
		asm{
			mov EAX, a;
			call dummy;
			jmp dummy_end;
		dummy:
			inc EAX;
			ret;
		dummy_end:
			inc EAX;
			mov a, EAX;
		}
		
		assert(a==0xAB_34_56_7A);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}