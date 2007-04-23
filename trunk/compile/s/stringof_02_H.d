// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.stringof_02_H;

char[] bar(){
	return "1";
}

static assert("bar()" == (bar()).stringof);
