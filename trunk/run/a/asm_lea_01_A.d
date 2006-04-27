// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_A;

int main(){
	version(D_InlineAsm_X86){
		uint a;
		uint b;
		
		asm{
			lea EAX, a;
			mov b, EAX;
		}
		
		if(b != cast(int)&a){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
