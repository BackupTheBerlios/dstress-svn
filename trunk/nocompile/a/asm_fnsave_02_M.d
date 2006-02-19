// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_M;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			fnsave x;
		}
	}
}