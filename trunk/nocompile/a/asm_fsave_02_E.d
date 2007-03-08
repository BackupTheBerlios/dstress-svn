// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_E;

void main(){
	version(D_InlineAsm_X86){
		long x;
		
		asm{
			fsave x;
		}
	}
}