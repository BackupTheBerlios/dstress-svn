// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_mul_01_A;

int main(){
	version(D_InlineAsm){
		ushort a;
		ubyte x = byte.max+2;
		
		asm{
			mov EAX, 0x12_34_56_78u;
			mov AL, 2;
			mul x;
			mov a, AX;
		}

		assert(a==(byte.max+2)*2);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}