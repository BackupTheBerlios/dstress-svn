// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2004-12-29
// @uri@	news:opsjr1fu1jkcck4r@tc3-ppp187.dialup.wzrd.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2620

module dstress.run.bug_e2ir_141_D;

union MyUnion{
	int a;
	int b;	
}

class MyClass{
	static MyUnion prop(){
		MyUnion u;
		return u;
	}

	static void prop(MyUnion u){
	}
}

MyClass dummy;

int main(){
	MyClass c = new MyClass();
	c.prop = true ? MyClass.prop : MyClass.prop;
	assert(c.prop.a == 0);
	c.prop.a = 1;
	assert(c.prop.b == 1);
	return 0;
}
