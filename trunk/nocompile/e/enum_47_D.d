// $HeadURL$
// $Date$
// $Author$

// @author@	James Pelcis <jpelcis@gmail.com>
// @date@	2006-09-19
// @uri@	news:bug-355-3@http.d.puremagic.com/issues/
// @desc@	[Issue 355] New: ICE from enum : nonexistent type

// __DSTRESS_ELINE__ 16

module dstress.nocompile.e.enum_47_D;

int id;

enum E : id {
        a
}

