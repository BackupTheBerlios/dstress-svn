// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2006-01-24
// @uri@	news:dr4t3d$1f24$1@digitaldaemon.com
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=712

module dstress.run.m.mixin_15_C;

int status;

template T(){
	void test(){
		status += 2;
	}
}

interface I{
	void test();
}

class C : I{
	mixin T!();

	void test(){
		status -= 1;
	}
}

mixin T!();

int main(){
	I i = new C();

	if(status != 0){
		assert(0);
	}
	i.test();
	if(status != -1){
		assert(0);
	}
	test();
	if(status != 1){
		assert(0);
	}

	return 0;
}
