// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.cn>
// @date@	2006-10-03
// @uri@	news:bug-396-3@http.d.puremagic.com/issues/
// @desc@	[Issue 396] New: aliased identifier in asm blocks cause compiler segment faults

module dstress.run.a.alias_38_C;

version(D_InlineAsm_X86){
	version = runTest;
}else version(D_InlineAsm_X86_64){
	version = runTest;
}

version(runTest){
	int main(){
		int x = 1;

		alias x y;

		asm{
			inc x;
		}

		if(y != 2){
			assert(0);
		}

		return 0;
	}
}else{
	pragma(msg, "DSTRESS{XFAIL}: no inline ASM support");
	static assert(0);
}
