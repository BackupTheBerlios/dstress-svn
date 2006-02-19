// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fst_02_C;

void main(){
	version(D_InlineAsm){
		short x;
		
		asm{
			fst x;
		}
	}
}