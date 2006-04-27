// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_lar_01;

int main(){
	version(D_InlineAsm_X86){
		asm{
			mov AX, 0x0;
			lar BX, AX;
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
