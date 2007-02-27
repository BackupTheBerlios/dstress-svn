// $HeadURL$
// $Date$
// $Author$

// @author@	Manuel König <manuelk89@gmx.net>
// @date@	2007-01-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=877
// @desc@	[Issue 877] forward references in interdependent template/struct definitions since v1.0

module dstress.compile.f.forward_reference_18_A;

struct S{
	T!(int)* pt;
}

struct T(FOO){
	S s;
}

