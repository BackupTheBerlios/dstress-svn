// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	news:bug-596-3@http.d.puremagic.com/issues/
// @desc@	[Issue 596] New: Support array, arrayliteral and struct in switch and case

module dstress.run.c.case_05_C;

int test(wchar[] s){
	switch(s){
		case [cast(wchar)'a', '2']:
			return 1;
		case [cast(wchar)'b']:
			return 3;
		default:
			return 4;
	}
}

int main(){
	if(test("b") != 3){
		assert(0);
	}
	if(test("a2") != 1){
		assert(0);
	}
	if(test("abcd") != 4){
		assert(0);
	}

	return 0;
}
