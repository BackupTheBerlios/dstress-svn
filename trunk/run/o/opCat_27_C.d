// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2006-12-02
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=627
// @desc@	[Issue 627] Concatenation of strings to string arrays with ~ corrupts data

module dstress.run.o.opCat_27_C;

int main() {
	wchar[][] foo;
	if(1 != (foo ~ "foo"w.dup).length){
		assert(0);
	}
	return 0;
}
