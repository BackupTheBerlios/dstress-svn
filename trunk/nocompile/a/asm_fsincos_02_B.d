// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_B;

void main(){
	version(D_InlineAsm){
		short x;
		
		asm{
			fsincos x;
		}
	}
}