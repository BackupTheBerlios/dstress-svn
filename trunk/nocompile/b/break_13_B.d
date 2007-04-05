// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg@iname.com>
// @date@	2007-01-10
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=827
// @desc@	[Issue 827] Trying to break out of a labelled BlockStatement breaks out of a for loop at its beginning

// __DSTRESS_ELINE__ 21

module dstress.nocompile.b.break_13_B;

extern void bar();

void foo() {
	block: {
		bar();
		for (int i = 0; i < 10; i++) {
			if (i == 5){
				break block;
			}
		}
		assert(0);
	}
}
