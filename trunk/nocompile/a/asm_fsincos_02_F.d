// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_F;

void main(){
	version(D_InlineAsm){
		double x;
		
		asm{
			fsincos x;
		}
	}
}