// $HeadURL$
// $Date$
// $Author$

module dstress.nocompile.pragma_lib_07;

void test(){
	char* name = "mylib";
	pragma(lib, name);
}