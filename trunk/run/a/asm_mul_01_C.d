// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_01_C;

int main(){
	version(D_InlineAsm){
		uint a, b;
		uint x = int.max+2;
		
		asm{
			mov EAX, 0x12_34_56_78u;
			mov EDX, 0x12_34_56_78u;
			mov EAX, 2;
			mul x;
			mov a, EDX;
			mov b, EAX;
		}

		assert(a==1u);
		assert(b==2u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}