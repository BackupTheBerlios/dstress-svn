// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a, b;
		ushort x = byte.max+3;
		ubyte y = 2;
		
		asm{
			mov AX, x;
			div y;
			mov a, AL;
			mov b, AH;
		}

		assert(a==65u);
		assert(b==0u);
		
		x = byte.max+2;
		y = 2;
				
		asm{
			mov AX, x;
			div y;
			mov a, AL;
			mov b, AH;
		}
		
		assert(a==64u);
		assert(b==1u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}