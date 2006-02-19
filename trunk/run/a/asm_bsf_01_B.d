// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_bsf_01_B;

int main(){
	version(D_InlineAsm){
		uint a = 0x30000;
		
		asm{
			bsf EAX, a;
			mov a, EAX;
		}
		
		assert(a==16);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}