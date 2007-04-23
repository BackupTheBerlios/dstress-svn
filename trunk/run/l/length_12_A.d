// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-04-21
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1171
// @desc@	[Issue 1171] Cannot create a static array with the length of a const static array in function scope

module dstress.run.l.length_12_A;

int main() {
	const int[2] foo;
	int[foo.length] bar;

	if(2 != bar.length){
		assert(0);
	}

	return 0;
}
