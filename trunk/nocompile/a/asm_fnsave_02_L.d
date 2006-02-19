// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_L;

void main(){
	version(D_InlineAsm){
		real x;
		
		asm{
			fnsave x;
		}
	}
}