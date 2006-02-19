// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_D;

void main(){
	version(D_InlineAsm){
		int x;
		
		asm{
			fsave x;
		}
	}
}