// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.i.in_out_body_10_A;

int a;
int b;

class Base {
	int func()
	out (result) {
		a++;
	}
	body {
		return 13;
	}
}

class Derived : Base {
	override int func()
	out (result) {
		b++;
	}
	body {
		return 17;
	}
}

int main() {
	Base base = new Base();

	assert(a == 0);
	assert(b == 0);

	assert(base.func() == 13);

	assert(a == 1);
	assert(b == 0);

	Derived derived = new Derived();

	assert(derived.func() == 17);

	assert(a == 2);
	assert(b == 1);

	return 0;
}
