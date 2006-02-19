// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_K;

void main(){
	version(D_InlineAsm){
		real x;
		
		asm{
			frndint x;
		}
	}
}