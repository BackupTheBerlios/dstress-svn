// $HeadURL$
// $Date$
// $Author$

module dstress.compile.extern_05;

extern (C++) int test(char c);

int check(){
	return test('a');
}
