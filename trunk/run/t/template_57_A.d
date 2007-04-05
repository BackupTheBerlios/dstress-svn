// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.com>
// @date@	2007-01-24
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=883
// @desc@	[Issue 883] ICE: nested templates with integer arguments

module dstress.run.t.template_57_A;

struct Foo(int I){
	void Bar(int A)(Foo!(A) x ){
	}
}

int main(){
	Foo!(1) x;
	Foo!(1) y;
	x.Bar(y);
	return 0;
}
