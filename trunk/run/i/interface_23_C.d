// $HeadURL$
// $Date$
// $Author$

// @author@	<smjg@iname.com>
// @date@	2006-03-22
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=65

module dstress.run.i.interface_23_C;

int status;

interface I {
	int showData();
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

	int showData(){
		return data;
	}
}

int main() {
	Child a = new Child(105);
	assert(a);
	assert(status == 0);
	assert(a.data == 105);

	Parent p = a;
	assert(a);
	assert(status == 0);

	a.test();
	assert(status == 1);

	I i = p.test();
	assert(i);
	assert(status == 2);

	assert(a.data == 105);
	assert(a.showData() == 105);
	assert(i.showData() == 69);

	return 0;
}

