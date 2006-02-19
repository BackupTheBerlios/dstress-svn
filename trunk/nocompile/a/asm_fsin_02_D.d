// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_D;

void main(){
	version(D_InlineAsm){
		long x;
		
		asm{
			fsin x;
		}
	}
}