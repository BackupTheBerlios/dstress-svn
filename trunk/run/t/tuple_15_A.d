// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel Keep <daniel.keep+d.puremagic.com@gmail.com>
// @date@	2007-01-18
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=854
// @desc@	[Issue 854] TypeTuple in anonymous delegate causes ice in glue.c

module dstress.run.t.tuple_15_A;

template TypeTuple(TList...){
	alias TList TypeTuple;
}

void main(){
	auto y = function(TypeTuple!(uint,uint) ab){};
}
