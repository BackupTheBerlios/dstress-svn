// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frstor_02_M;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			frstor x;
		}
	}
}