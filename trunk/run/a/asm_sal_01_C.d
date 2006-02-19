 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_sal_01_C;

int main(){
	version(D_InlineAsm){		
		uint a = 0x80_01_01_02;
		
		asm{
			mov EAX, a;
			sal EAX, 1;
			mov a, EAX;
		}
		
		assert(a==0x00_02_02_04);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}