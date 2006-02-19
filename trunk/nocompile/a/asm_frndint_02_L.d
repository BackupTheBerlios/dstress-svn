// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_frndint_02_L;

void main(){
	version(D_InlineAsm){
		ireal x;
		
		asm{
			frndint x;
		}
	}
}