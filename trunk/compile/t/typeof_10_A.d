// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <bugzilla@digitalmars.com>
// @date@	2006-09-27
// @uri@	news:bug-380-3@http.d.puremagic.com/issues/
// @desc@	[Issue 380] New: cannot use typeof(*this) in a static context

module dstress.compile.t.typeof_10_A;

struct Foo{
        typeof(this) x;
}

static assert(is(Foo* == typeof(Foo.x)));
