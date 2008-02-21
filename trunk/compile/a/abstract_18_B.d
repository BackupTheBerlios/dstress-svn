// $HeadURL$
// $Date$
// $Author$

// @author@	<tortoise_74@yahoo.co.uk>
// @date@	2007-07-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1325
// @desc@	[Issue 1325] New: Forward declaration crashes gdc on cygwin

module dstress.compile.a.abstract_18_B;

class A;

class B{
	void bar(A a);
}
