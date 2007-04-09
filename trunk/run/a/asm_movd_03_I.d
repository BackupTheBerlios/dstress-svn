// $HeadURL$
// $Date$
// $Author$

// @author@	pmoore <pmoore_member@pathlink.com>
// @date@	2006-03-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6662

module dstress.run.a.asm_movd_03_I;

int main(){
	version(D_InlineAsm_X86){
		ulong l = 0x4444_AAAA_CCCC_1111;
		uint i = 0x33FF_FF33;
		asm{
			movdqu XMM7, l;
			mov EBX, i;

			movd XMM7, EAX;
			cmp i, EBX;
			jne bug;

			movd XMM7, ECX;
			cmp i, EBX;
			jne bug;

			movd XMM7, EDX;
			cmp i, EBX;
			jne bug;
		}

		return 0;
bug:
		assert(0);
	}else{
		pragma(msg, "DSTRESS{XFAIL}: no inline asm support");
		return 0;
	}
}
