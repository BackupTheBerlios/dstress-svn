// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 19

module dstress.nocompile.s.string_postfix_06_F;

void test(string a){
}

void test(wstring a){
}

void test(dstring a){
}

void main(){
	test("a"w "b"d);
}
