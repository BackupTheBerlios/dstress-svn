// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_E;

void main(){
	version(D_InlineAsm){
		long x;
		
		asm{
			frstor x;
		}
	}
}