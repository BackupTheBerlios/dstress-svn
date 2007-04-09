// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail_a_@_t_earthlink_d_._t_net>
// @date@	2005-05-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3880

module dstress.run.m.mixin_13_B;

int status;

class C {
	template T(alias f) {
		void check(){
			f();
			assert(status++==2);
		}
	}

	void test(){
		assert(status++==1);
	}

	mixin T!(test) x;

	void run(){
		assert(status++==0);
		check();
		assert(status++==3);
	}
}

int main(){
	C c = new C;
	c.run();
	assert(status==4);
	return 0;
}
