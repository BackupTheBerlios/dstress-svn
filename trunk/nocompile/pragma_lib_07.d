// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 11

module dstress.nocompile.pragma_lib_07;

void test(){
	char* name = "mylib";
	pragma(lib, name);
}