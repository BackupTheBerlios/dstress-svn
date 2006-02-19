// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsr_01_A;

int main(){
	version(D_InlineAsm){
		uint a = 0x30000;
		
		asm{
			bsr EAX, a;
			mov a, EAX;
		}
		
		assert(a==17);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}