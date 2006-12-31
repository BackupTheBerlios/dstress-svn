// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-25
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=596
// @desc@	[Issue 596] New: Support array, arrayliteral and struct in switch and case

module dstress.run.c.case_05_A;

int test(char[] s){
	switch(s){
		case ['a', '2']:
			return 1;
		case ['b']:
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
