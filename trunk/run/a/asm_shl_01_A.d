// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shl_01_A;

int main(){	
	version(D_InlineAsm){
		uint a = uint.max;
		
		asm{
			shl a, 1;
		}
		
		assert(a == uint.max-1u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}