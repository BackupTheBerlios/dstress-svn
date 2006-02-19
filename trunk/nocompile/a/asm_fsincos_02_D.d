// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_D;

void main(){
	version(D_InlineAsm){
		long x;
		
		asm{
			fsincos x;
		}
	}
}