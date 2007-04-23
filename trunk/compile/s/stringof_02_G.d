// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.stringof_02_G;

int bar(){
	return 1;
}

static assert("bar()" == (bar()).stringof);
