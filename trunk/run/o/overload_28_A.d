// $HeadURL$
// $Date$
// $Author$

// @author@	Tomasz Stachowiak <h3r3tic@mat.uni.torun.pl>
// @date@	2007-03-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1052
// @desc@	[Issue 1052] DMD 1.009 - aliasing functions from superclasses may result in incorrect conflicts

module dstress.run.o.overload_28_A;

class Parent{
	int func(int a) {
		return a * 2;
	}
}

class Child : Parent {
	alias Parent.func func;
}

class GrandChild : Child {
	alias Child.func func;
	
	void func(char[] a) {
		return a.length * 3;
	}
}

int main(){
	Parent p = new Parent();
	if(-4 != p.func(-2)){
		assert(0);
	}

	p = new Child();
	if(-4 != p.func(-2)){
		assert(0);
	}

	p = new GrandChild();
	if(-4 != p.func(-2)){
		assert(0);
	}
	if(3 != p.func("a")){
		assert(0);
	}

	return 0;
}
