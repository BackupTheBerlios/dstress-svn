// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-09-29
// @uri@	news:dhf4c3$pua$1@digitaldaemon.com

module dstress.run.b.bug_glue_355_C;

class Foo {
	this(int[] params ...) {
	}
}

class Bar {

	private this() {
		init();
	}

	void init() {
		Foo f = new Foo(1, 2, 3);
	}

}

int main(){
	Bar b = new Bar();
	return 0;
}
