// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsin_02_C;

void main(){
	version(D_InlineAsm){
		int x;
		
		asm{
			fsin x;
		}
	}
}