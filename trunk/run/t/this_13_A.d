// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-09
// @uri@	news:bug-419-3@http.d.puremagic.com/issues/
// @desc@	[Issue 419] New: Anonymous classes are not working.

module dstress.run.t.this_13_A;

class I {
	abstract void get( char[] s );
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
