// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_H;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			fsincos x;
		}
	}
}