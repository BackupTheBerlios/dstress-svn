// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1125
// @desc@	[Issue 1125] Segfault using tuple in asm code, when size not specified

module dstress.run.t.tuple_23_B;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}

version(test){
	int foo(X...)(X expr){
		int i;
		asm{
			mov EAX, expr[0];
			mov i, EAX;
		}
		return i;
	}

	int main(){
		if(3 != foo(3)){
			assert(0);
		}
		return 0;
	}
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline X86 ASM support");
}
