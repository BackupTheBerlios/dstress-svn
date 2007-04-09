// $HeadURL$
// $Date$
// $Author$

// @author@	Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5289

module dstress.run.t.template_class_12_B;

class Outer {
	int x;
	
	abstract class AbstractInner {
		void f();
	}

	class Inner(int i) : AbstractInner {
		void f(){
			x-=i;
		}
	}

	this() {
		AbstractInner c = new Inner!(2)();
		assert(x==0);
		c.f();
		assert(x==-2);
	}
}

int main(){
	Outer o = new Outer();
	assert(o.x == -2);
	return 0;
}



