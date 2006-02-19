// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.a.asm_fstp_02_B;

void main(){
	version(D_InlineAsm){
		ubyte b;
		
		asm{
			fstp b;
		}
	}
}