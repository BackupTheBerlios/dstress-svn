// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-03-01
// @uri@	news:d00fr5$17dc$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3068

module dstress.run.bug_cgcs_353_C;

struct MyStruct {
	int opEquals(MyStruct x) {
		return this.normalize is x.normalize;
	}
	
	MyStruct normalize() {
		return s;
	}
}

MyStruct s;

int main() {
	MyStruct a;
	MyStruct b;
	if(b != a){
		assert(0);
	}
	assert(&a!=&b);
	return 0;
}
