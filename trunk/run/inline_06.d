// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xtajtaaezs2@robingood
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2984

module dstress.run.inline_06;

struct MyStruct{

	int[] x;

	int foo() {
		return 3;
	}

	MyStruct bar(){
		MyStruct v;
		return v;
	}
	
	float bug(MyStruct p1) {
		return bar.foo;
	}
}

int main(){
	MyStruct s;
	assert(s.bug(s)==3);
	return 0;
}
