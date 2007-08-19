// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.string_postfix_06_A;

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
	assert(test("a"c "b"c)==2);
	return 0;
}
