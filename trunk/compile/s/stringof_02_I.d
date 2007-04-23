// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.stringof_02_I;

char[] bar(){
	return "1";
}

static assert("bar" == (bar).stringof);
