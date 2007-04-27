// $HeadURL$
// $Date$
// $Author$

// @author@	David <davidl@126.com>
// @date@	2007-04-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1122
// @desc@	[Issue 1122] dmd generate bad line number while reporting error message

// __DSTRESS_ELINE__ 15

module dstress.nocompile.e.ExpressionStatement_11_A;

void getkey(char[] key){
	*(key.ptr[1]=key.length;
}

void main(){
	getkey("asdf");
}
