// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_01_A;

int main(){
	version(D_InlineAsm){
		ubyte a = 1u;
		ubyte b = 3u;
		
		asm{
			mov AL, a;
			xadd b, AL;
			mov a, AL;
		}
	
		assert(a==3);
		assert(b==4);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}