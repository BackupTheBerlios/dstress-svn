// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lea_01_B;

int main(){
	version(D_InlineAsm_X86){
		ushort i;
		
		asm{
			lea AX, i;
			mov i, AX;
		}
		
		if(cast(ushort)&i != i){
			assert(0);
		}
		
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
