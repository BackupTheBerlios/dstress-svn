// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.a.asm_fsave_02_A;

void main(){
	version(D_InlineAsm){
		asm{
			fsave;
		}
	}
}