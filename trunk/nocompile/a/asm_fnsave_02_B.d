// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_B;

void main(){
	version(D_InlineAsm){
		byte x;
		
		asm{
			fnsave x;
		}
	}
}