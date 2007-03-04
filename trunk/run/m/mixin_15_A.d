// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2006-01-24
// @uri@	news:dr4t3d$1f24$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=712

module dstress.run.m.mixin_15_A;

int status;

template T(){
	void test(){
		status += 2;
	}
}

class C{
	mixin T!();

	void test(){
		status -= 1;
	}
}

mixin T!();

int main(){
	C c = new C();

	assert(status == 0);
	c.test();
	assert(status == -1);
	test();
	assert(status == 1);

	return 0;
}
