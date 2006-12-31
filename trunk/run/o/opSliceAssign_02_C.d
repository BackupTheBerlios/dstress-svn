// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-09-19
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=295
// @desc@	[Issue 295] New: Property call followed by sliceAssign not working for custom opSliceAssign

module dstress.run.o.opSliceAssign_02_C;

class A {
	void opSliceAssign(int x){
	}
	
	A d(){
		return this;
	}
}

int main() {
	A a = new A();
	a.d()[] = 5;

	return 0;
}
