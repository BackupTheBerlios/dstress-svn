// $HeadURL$
// $Date$
// $Author$

// @author@	Oskar Linde <oskar.linde@gmail.com>
// @date@	2006-09-19
// @uri@	news:bug-295-3@http.d.puremagic.com/issues/
// @desc@	[Issue 295] New: Property call followed by sliceAssign not working for custom opSliceAssign

module dstress.run.o.opSliceAssign_02_B;

struct A {
	void opSliceAssign(int x){
	}
	
	A d(){
		return *this;
	}
}

int main() {
	A a;
	a.d[] = 5;

	return 0;
}
