// $HeadURL$
// $Date$
// $Author$

// @author@	<smjg@iname.com>
// @date@	2006-03-22
// @uri@	news:bug-65-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.interface_23_B;

int status;

interface I {
}

class Parent {
	I test() {
		status += 7;
		return new Child(42);
	}
}

class Child : Parent, I {
	int data;

	this(int d) {
		data = d;
	}

	Child test() {
		status += 1;
		return new Child(69);
	}
}

int main() {
	Child a = new Child(105);
	assert(a);
	assert(status == 0);
	assert(a.data == 105);

	Parent p = a;
	assert(p);
	assert(status == 0);

	Child c = a.test();
	assert(c);
	assert(status == 1);
	assert(c.data == 69);

	I i = p.test();
	assert(i);
	assert(status == 2);

	Child d = cast(Child) i;
	assert(d);
	assert(status == 2);
	assert(d.data == 69);

	return 0;
}

