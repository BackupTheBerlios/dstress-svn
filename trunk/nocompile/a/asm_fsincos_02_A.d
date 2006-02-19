// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsincos_02_A;

void main(){
	version(D_InlineAsm){
		byte x;
		
		asm{
			fsincos x;
		}
	}
}