// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.a.asm_fnstcw_02_D;

void main(){
	version(D_InlineAsm){
		asm{
			fnstcw;
		}
	}
}