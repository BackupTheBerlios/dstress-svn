// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_H;

void main(){
	version(D_InlineAsm_X86){
		cfloat x;
		
		asm{
			frstor x;
		}
	}
}