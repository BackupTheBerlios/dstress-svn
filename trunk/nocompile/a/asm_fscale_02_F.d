// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_F;

void main(){
	version(D_InlineAsm){
		ifloat x;
		
		asm{
			fscale x;
		}
	}
}