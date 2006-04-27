// $HeadURL$
// $Date$
// $Author$

module dstress.norun.a.asm_ltr_01;

int main(){
	version(D_InlineAsm_X86){
		ushort s = 0;
		asm{
			ltr s;
		}
		return 0;
	}else{
		pragma(msg, "no Inline asm support");
		static assert(0);
	}
}
