// $HeadURL$
// $Date$
// $Author$

// @author@	James Pelcis <jpelcis@gmail.com>
// @date@	2006-09-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=355
// @desc@	[Issue 355] New: ICE from enum : nonexistent type

// __DSTRESS_ELINE__ 14

module dstress.nocompile.e.enum_47_E;

enum E : Unknown {
        a,
	b = a
}

