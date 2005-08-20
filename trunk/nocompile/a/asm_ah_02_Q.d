// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 17

module dstress.nocompile.a.asm_ah_02_Q;

enum E : short {
	A = 0x1234,
	B = 0x5678
}

void main(){
	version(D_InlineAsm){
		asm{
			mov AH, E.B;
		}
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}