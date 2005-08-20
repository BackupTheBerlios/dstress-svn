// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.asm_ah_02_J;

void main(){
	version(D_InlineAsm){
		real x;
	
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