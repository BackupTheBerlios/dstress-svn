// $HeadURL$
// $Date$
// $Author$

// @author@	Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-02
// @uri@	news:dkb749$edg$1@digitaldaemon.com

module dstress.run.t.template_class_12_A;

class Outer {
	int x;
	
	abstract class AbstractInner {
		void f();
	}

	class Inner : AbstractInner {
		void f(){
			x--;
		}
	}

	this() {
		AbstractInner c = new Inner();
		assert(x==0);
		c.f();
		assert(x==-1);
	}
}

int main(){
	Outer o = new Outer();
	assert(o.x == -1);
	return 0;
}



