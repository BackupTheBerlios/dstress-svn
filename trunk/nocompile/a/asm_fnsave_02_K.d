// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fnsave_02_K;

void main(){
	version(D_InlineAsm){
		cdouble x;
		
		asm{
			fnsave x;
		}
	}
}