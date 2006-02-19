// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_F;

void main(){
	version(D_InlineAsm){
		float x;
		
		asm{
			fnsave x;
		}
	}
}