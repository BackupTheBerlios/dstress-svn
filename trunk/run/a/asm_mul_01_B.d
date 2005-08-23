// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_01_B;

int main(){
	version(D_InlineAsm){
		ushort a, b;
		ushort x = short.max+2;
		
		asm{
			mov EAX, 0x12_34_56_78u;
			mov EDX, 0x12_34_56_78u;
			mov AX, 2;
			mul x;
			mov a, DX;
			mov b, AX;
		}

		assert(a==1u);
		assert(b==2u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}