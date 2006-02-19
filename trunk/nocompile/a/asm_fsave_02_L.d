// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_L;

void main(){
	version(D_InlineAsm){
		real x;
		
		asm{
			fsave x;
		}
	}
}