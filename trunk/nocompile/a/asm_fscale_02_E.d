// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_E;

void main(){
	version(D_InlineAsm){
		float x;
		
		asm{
			fscale x;
		}
	}
}