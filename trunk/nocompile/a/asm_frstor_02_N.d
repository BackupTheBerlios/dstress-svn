// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_N;

void main(){
	version(D_InlineAsm_X86){
		creal x;
		
		asm{
			frstor x;
		}
	}
}