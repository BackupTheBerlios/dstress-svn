// $HeadURL$
// $Date$
// $Author$

// @author@	<mariusmuja@gmail.com>
// @date@	2007-08-04
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1398
// @desc@	[Issue 1398] New: GDC doesn't generate correct code

module dstress.run.a.array_initialization_34_D;

class A{
	A[] aa;

	void bar(){
		aa = new A[10];
		if(10 != aa.length){
			assert(0);
		}
	}
}

int main(){
	A a = new A;
	a.bar();
	return 0;
}
