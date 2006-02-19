// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 1u;
		ubyte b = 3u;
		
		asm{
			mov AL, a;
			xor b, AL;
			mov a, AL;
		}
	
		assert(a==1u);
		assert(b==2u);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}