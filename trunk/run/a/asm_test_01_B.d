// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_test_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 3u;
		ushort b = 2u;
		
		asm{
			mov AX, a;
			test b, AX;
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