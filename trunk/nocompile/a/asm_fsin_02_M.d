// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_M;

void main(){
	version(D_InlineAsm){
		creal x;
		
		asm{
			fsin x;
		}
	}
}