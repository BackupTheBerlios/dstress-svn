// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fnstcw_02_C;

void main(){
	version(D_InlineAsm){
		
		float b;
		
		asm{
			fnstcw b;
		}
	}
}