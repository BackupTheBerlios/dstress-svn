// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1172
// @desc@	[Issue 1172] Inline assembler: cannot access member of templated aggregate directly

module dstress.run.a.asm_04_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}else{
	static assert(0, "DSTRESS{XFAIL}: no inline ASM support");
}

version(runTest){
	union Foo(T){
		int a;
	}

	alias Foo!(int) X;

	int main(){
		int bar;

		X foo;
		foo.a = 0xFEDC_BA09;

		asm{
			lea EAX, foo;
			mov ECX, X.a[EAX];
			mov bar, ECX;
		}

		if(0xFEDC_BA09 != bar){
			assert(0);
		}

		return 0;
	}
}
