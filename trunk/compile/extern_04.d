// $HeadURL$
// $Date$
// $Author$

module dstress.compile.extern_04;

version(Windows){
	extern (Pascal) int test(char c);

	int check(){
		return test('a');
	}
}
