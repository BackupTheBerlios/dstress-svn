// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_I;

void main(){
	version(D_InlineAsm_X86){
		double x;
		
		asm{
			fnsave x;
		}
	}
}