// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_edi_01;

int main(){
	version(D_InlineAsm){
		int i;
		short s=0x12_34;
	
		assert(i==0);
		assert(s==0x12_34);
		
		asm{
			mov EDI, 0;
			mov DI, s;
			mov i, EDI;
		}
	
		assert(i==0x12_34);
		assert(s==0x12_34);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}