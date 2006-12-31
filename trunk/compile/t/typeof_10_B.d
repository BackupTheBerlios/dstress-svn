// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <bugzilla@digitalmars.com>
// @date@	2006-09-27
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=380
// @desc@	[Issue 380] New: cannot use typeof(*this) in a static context

module dstress.compile.t.typeof_10_B;

struct Foo{
        typeof(*this) x;
}

static assert(is(Foo == typeof(Foo.x)));
