// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_H;

void main(){
	version(D_InlineAsm){
		cfloat x;
		
		asm{
			fnsave x;
		}
	}
}