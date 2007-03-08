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
		pragma(msg, "DSTRESS{XFAIL}: no inline x86 asm support");
		static assert(0);
	}
}
