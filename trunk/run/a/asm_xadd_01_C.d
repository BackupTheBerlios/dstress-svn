// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_xadd_01_C;

int main(){
	version(D_InlineAsm){
		uint a = 1u;
		uint b = 3u;
		
		asm{
			mov EAX, a;
			xadd b, EAX;
			mov a, EAX;
		}
	
		assert(a==3);
		assert(b==4);
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}