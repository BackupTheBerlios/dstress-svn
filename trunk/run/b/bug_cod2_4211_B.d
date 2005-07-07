// $HeadURL$
// $Date$
// $Author$

// @author@	Deewiant <deewiant.doesnotlike.spam@gmail.com>
// @date@	2005-07-07
// @uri@	news:dajn75$1hfl$1@digitaldaemon.com
// @desc@	Internal error: ../ztc/cod2.c 4211

module dstress.run.b.bug_cod2_4211_B;

struct Foo{
	ubyte a, b;
}

int bar(Foo e){
	return e.a + e.b;
}

int main() {
	Foo d;
	d.a=1;
	d.b=2;
	assert(bar(d)==3);
        return 0;
}
