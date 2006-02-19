// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fsave_02_H;

void main(){
	version(D_InlineAsm){
		cfloat x;
		
		asm{
			fsave x;
		}
	}
}