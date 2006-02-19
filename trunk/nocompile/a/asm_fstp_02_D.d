// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fstp_02_D;

void main(){
	version(D_InlineAsm){
		int x;
		
		asm{
			fstp x;
		}
	}
}