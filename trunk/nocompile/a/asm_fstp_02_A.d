// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 12

module dstress.nocompile.a.asm_fstp_02_A;

void main(){
	version(D_InlineAsm){
		asm{
			fstp;
		}
	}
}