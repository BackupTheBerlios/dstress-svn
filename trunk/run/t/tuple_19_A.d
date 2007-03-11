// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-03-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1028
// @desc@	[Issue 1028] Segfault using tuple inside asm code.

module dstress.run.t.tuple_19_A;

version(D_InlineAsm_X86){
	version = test;
}else version(D_InlineAsm_X86_64){
	version = test;
}else{
	static assert(0, "DSTRESS{XFAIL}: no x86 inline asm support");
}

version(test){
	int a(X...)(X x){
		int i = 0xAB_CD_EF_12;
		alias X[0] var1;
		asm {
			mov EAX, var1;
			inc EAX;
			mov i, EAX;
		}
		return i;
	}

	int main(){
		if(4 != a(3)){
			assert(0);
		}
		return 0;
	}
}
