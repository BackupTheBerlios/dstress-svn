// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-07
// @uri@	news:dajn75$1hfl$1@digitaldaemon.com
// @desc@	Internal error: ../ztc/cod2.c 4211

module dstress.run.b.bug_cod2_4211_S;

struct Foo{
	ubyte a, b, c;
}

int bar(Foo e){
	return e.a + e.b + e.c;
}

int main() {
	Foo d;
	d.a=1;
	d.b=2;
	d.c=3;

	if(bar(d) != 6){
		assert(0);
	}
	return 0;
}
