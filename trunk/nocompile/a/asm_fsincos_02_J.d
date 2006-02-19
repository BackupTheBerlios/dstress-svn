// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_J;

void main(){
	version(D_InlineAsm){
		idouble x;
		
		asm{
			fsincos x;
		}
	}
}