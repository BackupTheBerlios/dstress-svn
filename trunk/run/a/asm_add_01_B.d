// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_add_01_B;

int main(){
	version(D_InlineAsm){
		uint i = 0x12_23_45_56u;
		ushort s = 0xFFFFu;
		
		assert(i==0x12_23_45_56u);
		assert(s==0xFFFFu);
		
		asm{
			mov EAX, 0;
			mov AX, s;
			add AX, 1;
			mov i, EAX;
		}
	
		assert(i==0u);
		assert(s==0xFFFFu);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}