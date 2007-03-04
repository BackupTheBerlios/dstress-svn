// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=724

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typedef_11_A;

template Foo(TYPE) {
}

void main(){
	typedef Foo!(int) Foo;
}
