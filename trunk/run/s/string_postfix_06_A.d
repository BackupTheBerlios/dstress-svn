// $HeadURL$
// $Date$
// $Author$

module dstress.run.s.string_postfix_06_A;

int test(char[] a){
	return a.length;
}

int test(wchar[] a){
	return a.length + 100;
}

int test(dchar[] a){
	return a.length + 10000;
}

int main(){
	assert(test("a"c "b"c)==2);
	return 0;
}
