// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_al_01;

int main(){
	version(D_InlineAsm){
		byte a = 0x12;
		byte b;
	
		assert(a==0x12);
		assert(b==0);
	
		asm{
			mov AL, a;
			mov b, AL;
		}
	
		assert(a==0x12);
		assert(b==0x12);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}