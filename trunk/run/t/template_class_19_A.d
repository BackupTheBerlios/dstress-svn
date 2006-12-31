// $HeadURL$
// $Date$
// $Author$

// @author@	Nazo Humei <lovesyao@hotmail.com>
// @date@	2006-11-26
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=524
// @desc@	[Issue 524] Compiler crash when compiling

module dstress.run.t.template_class_19_A;

int status;

class Outer{
	void test(T)() {
		status++;
		new Inner!(T)();
	}

	class Inner(T) {
		void test(){
			status += 100;
			new Inner!(T)();
		}
	}
}

int main(){
	Outer o = new Outer();
	o.test!(int);
	if(status != 1){
		assert(0);
	}

	return 0;
}
