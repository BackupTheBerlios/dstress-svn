// $HeadURL$
// $Date$
// $Author$

module dstress.run.a.asm_pause_01_A;

int main(){
	version(D_InlineAsm_X86){

		asm{
			rep;
			nop;
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
