// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_C;

void main(){
	version(D_InlineAsm){
		short x;
		
		asm{
			frstor x;
		}
	}
}