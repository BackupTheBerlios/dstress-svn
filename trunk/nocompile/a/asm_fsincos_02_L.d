// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_L;

void main(){
	version(D_InlineAsm){
		cfloat x;
		
		asm{
			fsincos x;
		}
	}
}