// $HeadURL$
// $Date$
// $Author$

// @author@	John Demme <me@teqdruid.com>
// @date@	2005-12-05
// @uri@	news:dn2l1b$2j2i$1@digitaldaemon.com

module dstress.run.o.odd_bug_04_C;

abstract class Container(V) {
	abstract int opApply(int delegate(inout V) dg);
}

abstract class MutableList(V): Container!(V) {
	abstract MutableList insertBefore(int i, V item);

	abstract MutableList append(V item);
	abstract MutableList append(Container!(V) items);
}

class AbstractMutableList(V): MutableList!(V) {
	MutableList!(V) prepend(Container!(V) items) {
		foreach(V item; items) {
			insertBefore(0, item);
		}
		return this;
	}
}

int main(){
	AbstractMutableList!(int) paramList;
	test1();
	test1();
	return 0;
}

void test1(){
	void testBoolParam() {
		try {
			throw new Exception( "uups" );
		} catch (Exception o) {
		}
	}

	testBoolParam();
}