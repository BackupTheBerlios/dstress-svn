// $HeadURL$
// $Date$
// $Author$

// @author@	Russ Lewis <spamhole-2001-07-16@deming-os.org>
// @date@	2004-12-22
// @uri@	news:cqcr0k$v56$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2591

// __DSTRESS_ELINE__ 20

module dstress.nocompile.mixin_04;

struct Foo() {
	int var;
}

struct Bar(T) {
	mixin Foo;
	alias Foo.var var;
}
