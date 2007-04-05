// $HeadURL$
// $Date$
// $Author$

// @author@	Matti Niemenmaa <deewiant@gmail.com>
// @date@	2007-02-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=925
// @desc@	[Issue 925] ICE on casting array literal to void[]

module dstress.run.b.bug_cod1_2528_C;

int main(){
	auto x = cast(void[])[1];
	return x.length - 1;
}
