// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_J;

void main(){
	version(D_InlineAsm_X86){
		idouble x;
		
		asm{
			fsave x;
		}
	}
}