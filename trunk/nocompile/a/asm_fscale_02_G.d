// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_G;

void main(){
	version(D_InlineAsm){
		cfloat x;
		
		asm{
			fscale x;
		}
	}
}