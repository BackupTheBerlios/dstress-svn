// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5835

// __DSTRESS_TORTURE_BLOCK__ -release
// __DSTRESS_ELINE__ 17

module dstress.norun.i.in_out_body_10_C;

class Base {
	int func()
	out (result) {
		assert(0);
	}
	body {
		return 13;
	}
}

class Derived : Base {
	override int func()
	out (result) {
		assert(result);
	}
	body {
		return 17;
	}
}

int main() {
	Derived derived = new Derived();

	assert(derived.func() == 17);
}
