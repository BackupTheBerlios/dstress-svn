// $HeadURL$
// $Date$
// $Author$

// @author@	Fredrik Olsson <peylow@treyst.se>
// @date@	2006-01-26
// @uri@	news:drakns$15ot$2@digitaldaemon.com

module dstress.run.v.variadic_argument_12_B;

class Foo {
	uint args;

	this(){
	}
	
	void test(...) {
		args = _arguments.length;
	}
}

int main() {
	Foo foo = new Foo();
	foo.test(1, 2, 3);
	if(foo.args == 3){
		return 0;
	}
}
