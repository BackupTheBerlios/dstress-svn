// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_shl_01_B;

int main(){	
	version(D_InlineAsm){
		ushort a = ushort.max;
		
		asm{
			shl a, 1;
		}
		
		assert(a == ushort.max-1u);
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}