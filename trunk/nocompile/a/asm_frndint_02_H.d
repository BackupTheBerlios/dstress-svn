// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_H;

void main(){
	version(D_InlineAsm_X86){
		double x;
		
		asm{
			frndint x;
		}
	}
}