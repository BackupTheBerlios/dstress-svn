// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_F;

void main(){
	version(D_InlineAsm){
		ifloat x;
		
		asm{
			frndint x;
		}
	}
}