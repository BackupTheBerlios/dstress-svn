// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_H;

void main(){
	version(D_InlineAsm){
		double x;
		
		asm{
			fsin x;
		}
	}
}