// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-01
// @uri@	news:d00fr5$17dc$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3068

module dstress.run.bug_cgcs_353_C;

struct MyStruct {
	int opEquals(MyStruct x) {
		return this.normalize === x.normalize;
	}
	
	MyStruct normalize() {
		return s;
	}
}

MyStruct s;

int main() {
	MyStruct a;
	MyStruct b;
	assert(a==b);
	assert(&a!=&b);
	return 0;
}
