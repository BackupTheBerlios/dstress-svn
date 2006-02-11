// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	news:dskdle$1838$1@digitaldaemon.com

// __DSTRESS_ELINE__ 17

module dstress.nocompile.a.alias_30_B;

class Foo(TYPE) {
}

void main(){
	alias Foo!(int) Foo;
}
