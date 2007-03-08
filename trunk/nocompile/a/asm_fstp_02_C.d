// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fstp_02_C;

void main(){
	version(D_InlineAsm_X86){
		short x;
		
		asm{
			fstp x;
		}
	}
}