// $HeadURL$
// $Date$
// $Author$

// @author@	pmoore <pmoore_member@pathlink.com>
// @date@	2006-03-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6662

module dstress.run.a.asm_movd_05_K;

int main(){
	version(D_InlineAsm_X86){
		ulong l = 0x4444_AAAA_CCCC_1111;
		uint i = 0x33FF_FF33;
		asm{
			movdqu XMM5, l;
			mov EDX, i;

			movd XMM5, EAX;
			cmp i, EDX;
			jne bug;

			movd XMM5, EBX;
			cmp i, EDX;
			jne bug;

			movd XMM5, ECX;
			cmp i, EDX;
			jne bug;
		}

		return 0;
bug:
		assert(0);
	}else{
		static assert(0, "DSTRESS{XFAIL}: no inline X86 asm support");
	}
}
