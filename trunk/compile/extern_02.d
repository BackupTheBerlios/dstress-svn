// $HeadURL$
// $Date$
// $Author$

module dstress.compile.extern_02;

extern (D) int test(char c);

int check(){
	return test('a');
}
