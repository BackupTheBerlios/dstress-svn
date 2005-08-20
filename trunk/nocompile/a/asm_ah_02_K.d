// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 16

module dstress.nocompile.a.asm_ah_02_K;

void main(){
	version(D_InlineAsm){
		ireal x;
	
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