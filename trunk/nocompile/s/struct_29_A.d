// $HeadURL$
// $Date$
// $Author$

// @author@	downs <default_357-line@yahoo.de>
// @date@	2007-03-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1030
// @desc@	[Issue 1030] ICE one-liner; struct in delegate

module dstress.nocompile.s.struct_29_A;

void main() {
	void delegate() test = {
		struct test2{
			;
		}
	};
}
