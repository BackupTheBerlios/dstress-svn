// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <clugdbug@yahoo.com.au>
// @date@	2007-04-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1204
// @desc@	[Issue 1204] segfault using struct in CTFE

module dstress.run.s.struct_30_B;

struct S {
    int a = 0xABCD_1234;
    int b = 0xC0FF_EEEE;
}

S foo(){
    int q = 0;
    int unused;
    return S(q, 0);
}

int main(){
	const s = foo();
	if((0xABCD_1234 != s.a) || (0xC0FF_EEEE != s.b)){
		assert(0);
	}

	return 0;
}