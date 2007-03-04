// $HeadURL$
// $Date$
// $Author$

// @author@	Ilya Zaitseff <sark7@mail333.com>
// @date@	2005-02-14
// @uri@	news:opsl6xtajtaaezs2@robingood
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs/2984

module dstress.run.inline_05;

struct MyStruct{

	int[] x;

	int foo() {
		return 3;
	}

	MyStruct bar(){
		MyStruct v;
		foreach (inout int f; v.x){
			f=0;
		}
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