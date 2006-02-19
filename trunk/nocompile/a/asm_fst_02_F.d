// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fst_02_F;

void main(){
	version(D_InlineAsm){
		real x;
		
		asm{
			fst x;
		}
	}
}