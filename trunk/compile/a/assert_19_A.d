// $HeadURL$
// $Date$
// $Author$

// @author@	Elmar Zander <elmar@zandere.de>
// @date@	2007-01-30
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=901
// @desc@	[Issue 901] Comparison of array literals fails

module dstress.compile.a.assert_19_A;

static assert( [2,3]!=[2,4] );
