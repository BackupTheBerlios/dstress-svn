// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fscale_02_L;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			fscale x;
		}
	}
}