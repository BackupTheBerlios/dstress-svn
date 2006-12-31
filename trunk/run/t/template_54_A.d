// $HeadURL$
// $Date$
// $Author$

// @author@	Kirk McDonald <kirklin.mcdonald@gmail.com>
// @date@	2006-11-29
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=619
// @desc@	[Issue 619] Alias of templated struct instance crashes 0.175


module dstress.run.t.template_54_A;

struct Foo {
	int i;
}

template Bar(T) {
	static Foo Bar = { 5 };
}

void dummy(int x){
	if(x != 5){
		assert(0);
	}
}

int main() {
	alias Bar!(int) inst;
	dummy(inst.i);
	return 0;
}
