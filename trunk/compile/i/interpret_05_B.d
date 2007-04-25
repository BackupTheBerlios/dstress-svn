// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-04-07
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1108
// @desc@	[Issue 1108] Indexing an int[] not evaluatable at compile time

module dstress.compile.i.interpret_05_B;

const int[] data = [0xBABE_2007];

static assert(0xBABE_2007 == data[0]);
