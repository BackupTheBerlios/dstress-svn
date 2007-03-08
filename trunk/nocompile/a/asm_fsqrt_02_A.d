// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsqrt_02_A;

void main(){
	version(D_InlineAsm_X86){
		byte x;
		
		asm{
			fsqrt x;
		}
	}
}