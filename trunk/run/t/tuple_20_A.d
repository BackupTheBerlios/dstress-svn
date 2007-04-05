// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <korslund@gmail.com>
// @date@	2007-02-06
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=933
// @desc@	[Issue 933] Literal tuple parameters fails to compile when inout is mentioned

module dstress.run.t.tuple_20_A;

int x;

struct Foo(T...){
	void set(T t){
		x += t[0];
	}

	void get(inout T t){
		x *= t[0];
	}
}

int main(){
	Foo!(int) foo;
	foo.set(5);
	if(5 != x){
		assert(0);
	}

	return 0;
}
