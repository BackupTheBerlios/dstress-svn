// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <webmaster@villagersonline.com>
// @date@	2007-07-17
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1344
// @desc@	[Issue 1344] Can't implicitly convert literal 0 to typedef of ulong

module dstress.compile.t.typedef_24_B;

U u = 0;

typedef ulong U;
