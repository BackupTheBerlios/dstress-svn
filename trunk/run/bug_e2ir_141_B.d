// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2004-12-29
// @uri@	news:opsjr1fu1jkcck4r@tc3-ppp187.dialup.wzrd.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2620

module dstress.run.bug_e2ir_141_B;

class MyClass{
	static int prop(){
		int i;
		return i;
	}

	static void prop(int i){
	}
}

int main(){
	MyClass c = new MyClass();
	c.prop = true ? MyClass.prop : MyClass.prop;
	assert(c.prop == 0);
	c.prop == 7;
	assert(c.prop == 7);
	return 0;
}
