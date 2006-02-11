// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	news:dskdle$1838$1@digitaldaemon.com

// __DSTRESS_ELINE__ 17

module dstress.nocompile.t.typedef_11_C;

struct Foo(TYPE) {
}

void main(){
	typedef Foo!(int) Foo;
}
