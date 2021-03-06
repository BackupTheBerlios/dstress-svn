// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle
// @date@	2005-03-18
// @uri@	news:d1faqu$1pir$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D.announce/10

module dstress.run.mixin_08;

template Foo(alias tail) {
	int test(){
		return 1;
	}
}

struct List(V) {
	V tail;
	mixin Foo!(tail);
}

int main(){
	List!(int) x;
	assert(x.test()==1);
	return 0;
}