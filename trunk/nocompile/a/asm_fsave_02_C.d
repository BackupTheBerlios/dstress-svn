// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_C;

void main(){
	version(D_InlineAsm_X86){
		short x;
		
		asm{
			fsave x;
		}
	}
}