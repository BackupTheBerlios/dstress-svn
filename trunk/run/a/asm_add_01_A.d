// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_A;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_23_45_56;
		ubyte b = 0xFFu;
		
		assert(i==0x12_23_45_56);
		assert(b==0xFFu);
		
		asm{
			mov EAX, 0;
			mov AH, b;
			add AH, 1;
			mov i, EAX;
		}
	
		assert(i==0);
		assert(b==0xFFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}