// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_I;

void main(){
	version(D_InlineAsm_X86){
		creal x;
		
		asm{
			fsincos x;
		}
	}
}