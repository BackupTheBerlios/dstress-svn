// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xor_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 1u;
		uint b = 3u;
		
		asm{
			mov EAX, a;
			xor b, EAX;
			mov a, EAX;
		}
	
		assert(a==1u);
		assert(b==2u);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}