// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.asm_ah_02_C;

void main(){
	version(D_InlineAsm){
		int x;
	
		asm{
			mov
				AH,
				x;
		}
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}