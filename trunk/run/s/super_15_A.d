// $HeadURL$
// $Date$
// $Author$

// @author@	Frank Benoit <benoit@tionex.de>
// @date@	2007-04-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1203
// @desc@	[Issue 1203] Cannot create Anonclass in loop

module dstress.run.s.super_15_A;

class C {
}

int main(char[][] args){
	foreach(char[] arg; args){
		auto c = new class(arg) C {
				this(char[] arg){
				}
			};
		assert(c);
	}

	return 0;
}
