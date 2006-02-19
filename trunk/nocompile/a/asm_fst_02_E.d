// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fst_02_E;

void main(){
	version(D_InlineAsm){
		long x;
		
		asm{
			fst x;
		}
	}
}