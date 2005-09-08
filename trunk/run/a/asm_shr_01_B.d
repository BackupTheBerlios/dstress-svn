// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shr_01_B;

int main(){	
	version(D_InlineAsm){
		ushort a = ushort.max;
		
		asm{
			shr a, 1;
		}
		
		assert(a == 0b0111_1111__1111_1111);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}