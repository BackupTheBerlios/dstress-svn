// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xrbnaaaezs2@robingood
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2983

// __DSTRESS_ELINE__ 18

module dstress.nocompile.alias_17;

void test(){
}

int _test;
alias _test test;

void check(){
	test = 1;
} 