// $HeadURL$
// $Date$
// $Author$

// @author@	downs <default_357-line@yahoo.de>
// @date@	2007-03-08
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1038
// @desc@	[Issue 1038] explicit class cast breakage in 1.007

module dstress.run.c.cast_34_A;

class A {
	char id(){
		return 'A';
	}
}

class B : A {
	char id(){
		return 'B';
	}
}

int main(){
	A a = new B();
	if('B' != a.id()){
		assert(0);
	}
	return 0;
}
