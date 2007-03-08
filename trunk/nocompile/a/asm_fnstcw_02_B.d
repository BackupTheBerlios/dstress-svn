// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fnstcw_02_B;

void main(){
	version(D_InlineAsm_X86){
		
		int b;
		
		asm{
			fnstcw b;
		}
	}
}