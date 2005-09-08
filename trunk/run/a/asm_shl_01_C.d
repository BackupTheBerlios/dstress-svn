// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shl_01_C;

int main(){	
	version(D_InlineAsm){
		ubyte a = ubyte.max;
		
		asm{
			shl a, 1;
		}
		
		assert(a == ubyte.max-1u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}