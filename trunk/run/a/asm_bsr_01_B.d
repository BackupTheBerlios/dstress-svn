// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsr_01_B;

int main(){
	version(D_InlineAsm){
		ushort a = 0x3000;
		
		asm{
			bsr AX, a;
			mov a, AX;
		}
		
		assert(a==13);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}