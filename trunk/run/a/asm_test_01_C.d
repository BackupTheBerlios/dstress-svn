// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 3u;
		uint b = 2u;
		
		asm{
			mov EAX, a;
			test b, EAX;
			jg dummy;
			mov a, 0;
		dummy:
			inc a;
		}
	
		assert(a==4);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}