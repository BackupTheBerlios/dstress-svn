// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fstcw_02_A;

void main(){
	version(D_InlineAsm_X86){
		
		byte b;
		
		asm{
			fstcw b;
		}
	}
}