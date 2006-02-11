// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2006-02-11
// @uri@	news:dskdle$1838$1@digitaldaemon.com

module dstress.run.a.alias_30_H;

class Foo(TYPE) {
	TYPE x;
}

int main(){
	alias .Foo!(int) Foo;
	Foo f = new Foo();

	if(typeid(typeof(f.x)) == typeid(int)){
		return 0;
	}
}
