// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_K;

void main(){
	version(D_InlineAsm_X86){
		real x;
		
		asm{
			fsin x;
		}
	}
}