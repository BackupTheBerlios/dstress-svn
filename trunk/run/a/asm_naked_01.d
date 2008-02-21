// $HeadURL$
// $Date$
// $Author$

// @author@	<madou@madou.org>
// @date@	2007-03-01
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1013
// @desc@	[Issue 1013] Invalid code generated for naked functions with (u)long arguments

module dstress.run.a.asm_naked_01;

version(D_InlineAsm_X86){
	version(GNU){
		const RET_SIZE = 0;
	}else{
		const RET_SIZE = 8;
	}
	long test(long l){
		asm{
			naked;
			mov EDX, [ESP+0x8];
			mov EAX, [ESP+0x4];
			add EAX, 0x1;
			adc EDX, 0x1;
			ret RET_SIZE;
		}
	}

	int main(){
		if(0x1234_567A_0000_0000 != test(0x1234_5678_FFFF_FFFF)){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no matching inline ASM support");
	static assert(0);
}

