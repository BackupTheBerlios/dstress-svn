// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fstcw_02_C;

void main(){
	version(D_InlineAsm_X86){
		
		float b;
		
		asm{
			fstcw b;
		}
	}
}