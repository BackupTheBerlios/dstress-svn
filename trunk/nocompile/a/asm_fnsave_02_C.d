// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_C;

void main(){
	version(D_InlineAsm){
		short x;
		
		asm{
			fnsave x;
		}
	}
}