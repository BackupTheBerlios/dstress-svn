// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2004-12-29
// @uri@	news:opsjr1fu1jkcck4r@tc3-ppp187.dialup.wzrd.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2620

module dstress.run.bug_e2ir_141_A;

struct MyStruct{
	int i;
}

class MyClass{
	static MyStruct _s;

	static MyStruct* prop(){
		return &_s;
	}

	static void prop(MyStruct* s){
		_s=*s;
	}
}

int main(){
	MyClass c = new MyClass();
	c.prop = true ? MyClass.prop : MyClass.prop;
	assert(c.prop.i == 0);
	c.prop.i = 7;
	assert(c.prop.i == 7);
	return 0;
}
