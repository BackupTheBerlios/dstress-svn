// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.string_postfix_06_C;

int test(string a){
	return a.length;
}

int test(wstring a){
	return a.length + 100;
}

int test(dstring a){
	return a.length + 10000;
}

int main(){
	assert(test("a"d "b"d)==10002);
	return 0;
}
