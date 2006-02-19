 // $HeadURL$
 // $Date$
 // $Author$
 
module dstress.run.a.asm_sal_01_A;

int main(){
	version(D_InlineAsm){		
		uint a = 0xFF_FF_01_02;
		
		asm{
			mov EAX, a;
			sal AL, 1;
			mov a, EAX;
		}
		
		assert(a==0xFF_FF_01_04);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}