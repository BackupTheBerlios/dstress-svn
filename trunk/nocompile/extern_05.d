// $HeadURL$
// $Date$
// $Author$

// this feature is - as of dmd-0.106 - undocumented

module dstress.nocompile.extern_05;

extern (C++) int test(char c);

int check(){
	return test('a');
}
