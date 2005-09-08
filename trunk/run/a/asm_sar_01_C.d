// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_sar_01_C;

int main(){	
	version(D_InlineAsm){
		byte a = byte.min;
		
		asm{
			sar a, 1;
		}
		
		assert(a < 0);
		assert(a == a.min - (a.min/2));
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}