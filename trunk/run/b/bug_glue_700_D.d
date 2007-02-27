// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <kevinbealer@gmail.com>
// @date@	2007-01-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=875
// @desc@	[Issue 875] crash in glue.c line 700

module dstress.run.b.bug_glue_700_D;

class Foo(A){
	this(A a){
	}
}

int mk_future(A, B...)(A, B){
	typedef B TArgs;
	Foo!(TArgs) TFoo;
	return 0;
}

int main(){
	void bongos(){
	}
	mk_future(bongos);
	return 0;
}
