// $HeadURL$
// $Date$
// $Author$

// @author@	Reiner Pope <reiner.pope@gmail.com>
// @date@	2007-04-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1100
// @desc@	[Issue 1100] Alias parameters don't accept primitive types.

module dstress.nocompile.a.alias_42_C;

template Alias(alias A){
	alias A Alias;
}

Alias!(Int) x;
