// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_F;

void main(){
	version(D_InlineAsm){
		ifloat x;
		
		asm{
			fsin x;
		}
	}
}