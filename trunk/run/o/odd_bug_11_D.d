// $HeadURL$
// $Date$
// $Author$

// @author@	Christopher Pellng <chris@inventivedingo.com>
// @date@	2006-12-05
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=654
// @desc@	[Issue 654] Const string member using implicit type inference gives garbage in certain situation

module dstress.run.o.odd_bug_11_D;

class A {
	static const char[] MY_CONST_STRING = "hello";

	this(string cmp) {
		if(cmp != MY_CONST_STRING){
			assert(0);
		}
	}
}

void dummy(...){}

void never_called() {
	dummy("%s", A.MY_CONST_STRING);
}

int main() {
	A a = new A("hello");

	return 0;
}
