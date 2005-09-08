// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shr_01_C;

int main(){	
	version(D_InlineAsm){
		ubyte a = ubyte.max;
		
		asm{
			shr a, 1;
		}
		
		assert(a == 0b0111_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}