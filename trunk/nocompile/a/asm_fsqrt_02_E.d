// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsqrt_02_E;

void main(){
	version(D_InlineAsm_X86){
		float x;
		
		asm{
			fsqrt x;
		}
	}
}