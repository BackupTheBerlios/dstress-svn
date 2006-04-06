// $HeadURL$
// $Date$
// $Author$

// @author@	<deewiant@gmail.com>
// @date@	2006-04-04
// @uri@	news:bug-85-3@http.d.puremagic.com/bugzilla/

module dstress.run.i.interface_24_C;

interface I {
	I[] foo();
	int x();
}

class Class : I {
	I[] foo() {
		Class[] f;
		f ~= new Class();
		return f;
	}

	int x() {
		return 1;
	}
}

int main() {
	Class c = new Class();
	I i = c;
	
	if(c.x() != 1){
		assert(0);
	}

	if(i.x() != 1){
		assert(0);
	}

	I[] ii = c.foo();
	i = ii[0];

	if(i.x() != 1){
		assert(0);
	}

	return 0;
}
