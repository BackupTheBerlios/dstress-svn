// $HeadURL$
// $Date$
// $Author$

// @author@	pmoore <pmoore_member@pathlink.com>
// @date@	2006-03-14
// @uri@	news:dv76et$oe1$1@digitaldaemon.com

module dstress.run.a.asm_movd_04_B;

int main(){
	version(D_InlineAsm_X86){
		ulong l = 0x4444_AAAA_CCCC_1111;
		uint i = 0x33FF_FF33;
		asm{
			movdqu XMM1, l;
			mov ECX, i;

			movd EAX, XMM1;
			cmp i, ECX;
			jne bug;

			movd EBX, XMM1;
			cmp i, ECX;
			jne bug;

			movd EDX, XMM1;
			cmp i, ECX;
			jne bug;
		}

		return 0;
bug:
		assert(0);
	}else{
		pragma(msg, "no X86 inline asm support");
		return 0;
	}
}
