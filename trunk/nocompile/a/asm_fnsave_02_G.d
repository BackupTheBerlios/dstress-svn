// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_G;

void main(){
	version(D_InlineAsm){
		ifloat x;
		
		asm{
			fnsave x;
		}
	}
}