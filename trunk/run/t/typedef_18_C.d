// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-09-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=334
// @desc@	[Issue 334] New: Void Initializer ICE

module dstress.run.t.typedef_18_C;

typedef int MyInt = void;

int main(char[][] args){
	MyInt[] a = new MyInt[args.length];
	
	if(a.length != args.length){
		assert(0);
	}

	return 0;
}
