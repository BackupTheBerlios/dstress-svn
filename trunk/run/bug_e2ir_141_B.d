// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2004-12-29
// @uri@	news:opsjr1fu1jkcck4r@tc3-ppp187.dialup.wzrd.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2620
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1037

module dstress.run.bug_e2ir_141_B;

class MyClass{
	static int _i;

	static int prop(){
		return _i;
	}

	static void prop(int i){
		_i=i;
	}
}

int main(){
	MyClass c = new MyClass();
	c.prop = true ? MyClass.prop : MyClass.prop;
	if(0 != c.prop){
		assert(0);
	}
	c.prop = 7;
	if(7 != c.prop){
		assert(0);
	}
	return 0;
}
