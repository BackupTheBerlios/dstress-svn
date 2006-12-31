// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=419
// @desc@	[Issue 419] New: Anonymous classes are not working.

module dstress.run.t.this_13_B;

interface I {
	void get( char[] s );
}

class C{
	void init(){
		I i = new class() I {
			void get( char[] s ){
				func();
			}
		};
	}
	void func( ){ }
}

int main(){
	C c = new C();
	c.init();

	return 0;
}

