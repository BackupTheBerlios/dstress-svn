// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-23
// @uri@	news:bug-446-3@http.d.puremagic.com/issues/
// @desc@	[Issue 446] New: Anonymous class and "return without calling constructor"

module dstress.run.s.super_14_B;

class Base {
	this(){
	}
}

int main(char[][] args){
	Base b = new class() Base {
			this(){
				super();
			}
		};
	return 0;
}
