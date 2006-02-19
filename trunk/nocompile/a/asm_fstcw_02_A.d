// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 15

module dstress.nocompile.a.asm_fstcw_02_A;

void main(){
	version(D_InlineAsm){
		
		byte b;
		
		asm{
			fstcw b;
		}
	}
}