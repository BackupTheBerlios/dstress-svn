// $HeadURL$
// $Date$
// $Author$

// @author@	Garett Bass <garettbass@studiotekne.com>
// @date@	2005-11-02
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5289

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



