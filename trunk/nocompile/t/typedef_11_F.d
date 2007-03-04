// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=724

// __DSTRESS_ELINE__ 16

module dstress.nocompile.t.typedef_11_F;

template Foo(TYPE) {
}

typedef Foo!(int) Foo;
