// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_A;

int main(){
	version(D_InlineAsm){
		uint i;
		
		asm{
			lea EAX, i;
			mov i, EAX;
		}
		
		assert(cast(uint)&i == i);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}