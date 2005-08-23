// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_div_01_C;

int main(){
	version(D_InlineAsm){
		uint y = 2;
		
		uint a = 0x00_00_00_00u;
		uint b = 0xFF_FF_FF_FFu;
		
		asm{
			mov EDX, a;
			mov EAX, b;
			div y;
			mov a, EAX;
			mov b, EDX;
		}

		assert(a==0x7F_FF_FF_FFu);
		assert(b==0x1u);
		
		a = 0x00_00_00_00u;
		b = 0xFF_FF_FF_FEu;

		asm{
			mov EDX, a;
			mov EAX, b;
			div y;
			mov a, EAX;
			mov b, EDX;
		}

		assert(a==0x7F_FF_FF_FFu);
		assert(b==0x0u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}