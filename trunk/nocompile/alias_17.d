// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xrbnaaaezs2@robingood
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2983

module dstress.nocompile.alias_17;

void test(){
}

int _test;
alias _test test;

void check(){
	test = 1;
} 