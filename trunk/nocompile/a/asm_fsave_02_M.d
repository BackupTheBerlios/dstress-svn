// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_M;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			fsave x;
		}
	}
}