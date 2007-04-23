// $HeadURL$
// $Date$
// $Author$

// @author@	Frits van Bommel <fvbommel@wxs.nl>
// @date@	2007-04-16
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1155
// @desc@	[Issue 1155] GDC crash (internal compiler error: in mostly_copy_tree_r, at gimplify.c:678)

module dstress.run.b.bug_gimplify_678_B;

int main() {
	int[] arr = new int[1];
	arr[$-1] = -1;

	if(-1 != arr[0]){
		assert(0);
	}

	return 0;
}
