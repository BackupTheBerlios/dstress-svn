// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2006-10-23
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=446
// @desc@	[Issue 446] New: Anonymous class and "return without calling constructor"

module dstress.run.s.super_14_A;

class Base {
	this(){
	}
}

int main(char[][] args){
	if(args.length != 13){
		Base b = new class() Base {
				this(){
					super();
				}
			};
	}
	return 0;
}
