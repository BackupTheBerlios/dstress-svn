// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_A;

void main(){
	version(D_InlineAsm_X86){
		byte x;
		
		asm{
			fscale x;
		}
	}
}