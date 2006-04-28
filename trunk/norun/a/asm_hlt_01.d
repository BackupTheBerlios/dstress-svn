// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_hlt_01;

int main(){
	version(D_InlineAsm_X86){
		asm{
			hlt;
		}

		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
