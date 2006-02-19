// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_I;

void main(){
	version(D_InlineAsm){
		idouble x;
		
		asm{
			fsin x;
		}
	}
}