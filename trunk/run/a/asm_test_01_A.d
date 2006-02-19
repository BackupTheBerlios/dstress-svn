// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 3u;
		ubyte b = 2u;
		
		asm{
			mov AL, a;
			test b, AL;
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