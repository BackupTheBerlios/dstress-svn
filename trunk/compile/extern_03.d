// $HeadURL$
// $Date$
// $Author$

module dstress.compile.extern_03;

version(Windows){
	extern (Windows) int test(char c);

	int check(){
		return test('a');
	}
}
