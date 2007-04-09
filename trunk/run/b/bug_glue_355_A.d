// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-09-29
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5083

module dstress.run.b.bug_glue_355_A;

class Foo {
	this(int[] params ...) {
	}
}

class Bar {

	private this() {
		init();
	}

	private void init() {
		Foo f = new Foo(1, 2, 3);
	}

}

int main(){
	Bar b = new Bar();
	return 0;
}
