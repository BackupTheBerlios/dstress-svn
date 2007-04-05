// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kühne <thomas-dloop@kuehne.cn>
// @date@	2007-01-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=803
// @desc@	[Issue 803] incorrect error message and location for repeated aliases

// __DSTRESS_ELINE__ 18

module dstress.nocompile.a.alias_41_B;

struct Foo{
}

alias Foo Bar;
alias Foo Bar;
