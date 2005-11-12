// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 19

module dstress.nocompile.s.string_postfix_06_F;

void test(char[] a){
}

void test(wchar[] a){
}

void test(dchar[] a){
}

void main(){
	test("a"w "b"d);
}
