// $HeadURL$
// $Date$
// $Author$

// @author@	<sean@f4.ca>
// @date@	2006-03-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=13

module dstress.run.i.inout_02_A;

version(D_InlineASM_X86){
	version = runTest;
}

version(runTest){
	void fn(ref byte val){
		asm{
			mov EAX, val;
			inc [EAX];
		}
	}

	int main(){
		byte b = 3;
		fn(b);

		if(b != 4){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}


