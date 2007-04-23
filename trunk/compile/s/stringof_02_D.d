// $HeadURL$
// $Date$
// $Author$

module dstress.compile.s.stringof_02_D;

static assert("Foo.bar" == (Foo.bar).stringof);
