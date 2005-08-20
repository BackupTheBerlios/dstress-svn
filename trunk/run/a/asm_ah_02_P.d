// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_ah_02_P;

enum E : byte{
	A = 0x12,
	B = 0x23
}

int main(){
	version(D_InlineAsm){
		byte b;
		assert(b==0);
	
		asm{
			mov AH, E.A;
			mov b, AH;
		}
		
		assert(b==E.A);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}