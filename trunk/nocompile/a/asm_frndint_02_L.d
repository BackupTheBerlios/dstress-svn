// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_L;

void main(){
	version(D_InlineAsm_X86){
		ireal x;
		
		asm{
			frndint x;
		}
	}
}