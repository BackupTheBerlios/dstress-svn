// $HeadURL$
// $Date$
// $Author$

// @author@	Vathix <vathix@dprogramming.com>
// @date@	2004-12-29
// @uri@	news:opsjr1fu1jkcck4r@tc3-ppp187.dialup.wzrd.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2620

module dstress.run.bug_e2ir_141_C;

class MyClass{
	static MyClass prop(){
		return dummy;
	}

	static void prop(MyClass o){
		dummy=o;
	}
}

MyClass dummy;

int main(){
	dummy = new MyClass();
	MyClass c = new MyClass();
	c.prop = true ? MyClass.prop : MyClass.prop;
	assert(c.prop is dummy);
	return 0;
}
